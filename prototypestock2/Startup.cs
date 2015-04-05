using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(prototypestock2.Startup))]
namespace prototypestock2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
