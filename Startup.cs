using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Cleveral.Startup))]
namespace Cleveral
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
