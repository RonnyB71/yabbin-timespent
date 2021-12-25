using Microsoft.AspNetCore.Mvc;

namespace Yabbin.TimeSpent.Api.Controllers
{
    [Route("api")]
    [ApiController]
    public class RootController : ControllerBase
    {
        public ActionResult Get()
        {
            return Ok();
        }
    }
}
