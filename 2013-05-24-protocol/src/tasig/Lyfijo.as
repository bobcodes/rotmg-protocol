package tasig
{
   import aaa.rotmg.ui.ServersContainer;
   import aaa.rotmg.net.Server;
   import __AS3__.vec.Vector;
   import aaa.rotmg.config.UserConfig;


   public class Lyfijo extends Object implements ServersContainer
   {
      public function Lyfijo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.localhost=new Server().setName("localhost").setPort(UserConfig.PORT);
         return;
      }

      private var localhost:Server;

      public function setIP(param1:String) : Lyfijo {
         this.localhost.setAddress(param1);
         return this;
      }

      public function getServers() : Vector.<Server> {
         new Vector.<Server>(1)[0]=this.localhost;
         return new Vector.<Server>(1);
      }

      public function getBestServer() : Server {
         return this.localhost;
      }

      public function hasServers() : Boolean {
         return true;
      }

      public function setServers(param1:Vector.<Server>) : void {
         return;
      }
   }

}