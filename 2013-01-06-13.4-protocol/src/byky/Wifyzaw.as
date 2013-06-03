package byky
{
[CLASS127]   import wyjimigo.Tykum;
   import __AS3__.vec.Vector;
   import wyjimigo.Server;
   import aaa.Parameters;


   public class Wifyzaw extends Object
   {
      public function Wifyzaw() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var servers:Tykum;

      public var data:XML;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.servers.laqiwyze(this.cizuj());
         return;
      }

      private function cizuj() : Vector.<Server> {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         var _loc1_:XMLList = this.data.child("Servers").child("Server");
         var _loc2_:Vector.<Server> = new Vector.<Server>(0);
         for each (_loc3_ in _loc1_)
         {
            _loc2_.push(this.bisoj(_loc3_));
         }
         return _loc2_;
      }

      private function bisoj(param1:XML) : Server {
         return new Server().setName(param1.Name).setAddress(param1.DNS).setPort(Parameters.hihylebov).setLatLong(Number(param1.Lat),Number(param1.Long)).setUsage(param1.Usage).setIsAdminOnly(param1.hasOwnProperty("AdminOnly"));
      }
   }
[/CLASS]
}