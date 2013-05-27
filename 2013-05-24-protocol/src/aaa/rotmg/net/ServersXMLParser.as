package aaa.rotmg.net
{
   import aaa.rotmg.ui.ServersContainer;
   import __AS3__.vec.Vector;
   import aaa.rotmg.net.Server;
   import aaa.rotmg.config.UserConfig;


   public class ServersXMLParser extends Object
   {
      public function ServersXMLParser() {
         super();
         return;
      }

      public var servers:ServersContainer;

      public var data:XML;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.servers.setServers(this.parseServersFromXML());
         return;
      }

      private function parseServersFromXML() : Vector.<Server> {
         var xmlServerEntry:XML = null;
         var xmlServerEntries:XMLList = this.data.child("Servers").child("Server");
         var servers:Vector.<Server> = new Vector.<Server>(0);
         for each (xmlServerEntry in xmlServerEntries)
         {
            servers.push(this.parseServerFromXML(xmlServerEntry));
         }
         return servers;
      }

      private function parseServerFromXML(param1:XML) : Server {
         return new Server().setName(param1.Name).setAddress(param1.DNS).setPort(UserConfig.hyr).setLatLong(Number(param1.Lat),Number(param1.Long)).setUsage(param1.Usage).setIsAdminOnly(param1.hasOwnProperty("AdminOnly"));
      }
   }

}