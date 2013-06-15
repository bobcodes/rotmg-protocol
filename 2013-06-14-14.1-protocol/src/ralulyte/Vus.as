package ralulyte
{
   import jovurora.Divoceve;
   import __AS3__.vec.Vector;
   import jovurora.Server;
   import aaa.RotmgParameters.RotmgParameters;


   public class Vus extends Object
   {
      public function Vus() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var servers:Divoceve;

      public var data:XML;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.servers.diwa(this.wodedako());
         return;
      }

      private function wodedako() : Vector.<Server> {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:XML = null;
         var _loc1_:XMLList = this.data.child("Servers").child("Server");
         var _loc2_:Vector.<Server> = new Vector.<Server>(0);
         for each (_loc3_ in _loc1_)
         {
            _loc2_.push(this.vudavyp(_loc3_));
         }
         return _loc2_;
      }

      private function vudavyp(param1:XML) : Server {
         return new Server().setName(param1.Name).setAddress(param1.DNS).setPort(RotmgParameters.dale).setLatLong(Number(param1.Lat),Number(param1.Long)).setUsage(param1.Usage).setIsAdminOnly(param1.hasOwnProperty("AdminOnly"));
      }
   }

}