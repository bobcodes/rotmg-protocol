package leji
{
   import kogyc.Lifew;
   import __AS3__.vec.Vector;
   import kogyc.Server;
   import aaa.rotmg.config.UserConfig;


   public class Qavazit extends Object
   {
      public function Qavazit() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var servers:Lifew;

      public var data:XML;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.servers.rytory(this.dagutot());
         return;
      }

      private function dagutot() : Vector.<Server> {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         var _loc1_:XMLList = this.data.child("Servers").child("Server");
         var _loc2_:Vector.<Server> = new Vector.<Server>(0);
         for each (_loc3_ in _loc1_)
         {
            _loc2_.push(this.dacutotob(_loc3_));
         }
         return _loc2_;
      }

      private function dacutotob(param1:XML) : Server {
         return new Server().setName(param1.Name).setAddress(param1.DNS).setPort(UserConfig.hyr).setLatLong(Number(param1.Lat),Number(param1.Long)).setUsage(param1.Usage).setIsAdminOnly(param1.hasOwnProperty("AdminOnly"));
      }
   }

}