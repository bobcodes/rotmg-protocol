package tasig
{
   import aaa.rotmg.ui.ServersContainer;
   import aaa.rotmg.net.Server;
   import __AS3__.vec.Vector;
   import aaa.rotmg.config.UserConfig;


   public class Zyhifo extends Object implements ServersContainer
   {
      public function Zyhifo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.localhost=new Server().setName("localhost").setAddress("localhost").setPort(UserConfig.PORT);
         return;
      }

      private var localhost:Server;

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