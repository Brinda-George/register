using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebformRegister.Startup))]
namespace WebformRegister
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
