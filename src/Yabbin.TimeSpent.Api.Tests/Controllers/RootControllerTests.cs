namespace Yabbin.TimeSpent.Api.Tests.Controllers;

public class RootControllerTests
{
    [Fact]
    public async Task Get_Root_ReturnsOk()
    {
        using var factory = new WebApplicationFactory<Program>();
        var client = factory.CreateClient();

        var response = await client.GetAsync("api");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
    }
}
