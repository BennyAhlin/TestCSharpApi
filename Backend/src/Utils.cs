using Xunit.Sdk;
using Xunit.Abstractions;
using Microsoft.VisualStudio.TestPlatform.Utilities;

namespace WebApp;
public static class Utils
{

    // Read all mock users from file
    private static readonly Arr mockUsers = JSON.Parse(
        File.ReadAllText(FilePath("json", "mock-users.json"))
    );

    // Read all bad words from file and sort from longest to shortest
    // if we didn't sort we would often get "---ing" instead of "---" etc.
    // (Comment out the sort - run the unit tests and see for yourself...)
    private static readonly Arr badWords = ((Arr)JSON.Parse(
        File.ReadAllText(FilePath("json", "bad-words.json"))
    )).Sort((a, b) => ((string)b).Length - ((string)a).Length);

    public static bool IsPasswordGoodEnough(string password)
    {
        return password.Length >= 8
            && password.Any(Char.IsDigit)
            && password.Any(Char.IsLower)
            && password.Any(Char.IsUpper)
            && password.Any(x => !Char.IsLetterOrDigit(x));
    }

    public static bool IsPasswordGoodEnoughRegexVersion(string password)
    {
        // See: https://dev.to/rasaf_ibrahim/write-regex-password-validation-like-a-pro-5175
        var pattern = @"^(?=.*[0-9])(?=.*[a-zåäö])(?=.*[A-ZÅÄÖ])(?=.*\W).{8,}$";
        return Regex.IsMatch(password, pattern);
    }

    public static string RemoveBadWords(string comment, string replaceWith = "---")
    {
        comment = " " + comment;
        replaceWith = " " + replaceWith + "$1";
        badWords.ForEach(bad =>
        {
            var pattern = @$" {bad}([\,\.\!\?\:\; ])";
            comment = Regex.Replace(
                comment, pattern, replaceWith, RegexOptions.IgnoreCase);
        });
        return comment[1..];
    }

    public static Arr CreateMockUsers()
    {
        Arr successFullyWrittenUsers = Arr();
        foreach (var user in mockUsers)
        {
            // user.password = "12345678";
            var result = SQLQueryOne(
                @"INSERT INTO users(firstName,lastName,email,password)
                VALUES($firstName, $lastName, $email, $password)
            ", user);
            // If we get an error from the DB then we haven't added
            // the mock users, if not we have so add to the successful list
            if (!result.HasKey("error"))
            {
                // The specification says return the user list without password
                user.Delete("password");
                successFullyWrittenUsers.Push(user);
            }
        }
        return successFullyWrittenUsers;
    }


    public static Arr RemoveMockUsers()
    {
        var read = File.ReadAllText(FilePath("json", "mock-users.json"));
        Arr mockUsers = JSON.Parse(read);
        Arr successRemovedMockUsers = Arr();

        Arr usersInDb = SQLQuery("SELECT email FROM users");
        //create array of users based on user.email
        Arr emailsInDb = usersInDb.Map(user => user.email);
        //compare and filter. Only keep emails that exist in mockUser.email (json file)
        Arr mockUsersInDb = mockUsers.Filter(mockUser => emailsInDb.Contains(mockUser.email));
        //{"firstName":"Andreas","lastName":"Syphus","email":"asyphus8@odnoklassniki.ru"},
        foreach (var user in mockUsersInDb)
        {
            var removeUser = SQLQueryOne(
     @"DELETE FROM users WHERE email = $email", user);

            if (!removeUser.HasKey("error"))
            {
                user.Delete("password");
                // The specification says return the user list without password
                successRemovedMockUsers.Push(user);
            }
        }
        return successRemovedMockUsers;
    }

    public static Obj CountDomainsFromUseremails()
    {
        Arr domains = SQLQuery("SELECT SUBSTRING(email, INSTR(email, '@') + 1) AS domain, COUNT(*) AS count FROM users GROUP BY SUBSTRING(email, INSTR(email, '@') + 1); ");
        Obj countedDomains = Obj();

        foreach (var domain in domains)
        {
            countedDomains[domain.domain] = domain.count;
        }
        return countedDomains;
    }
}