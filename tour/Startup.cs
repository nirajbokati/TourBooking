using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(tour.Startup))]
namespace tour
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
