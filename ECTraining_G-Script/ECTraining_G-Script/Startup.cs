using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ECTraining_G_Script.Startup))]
namespace ECTraining_G_Script
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
