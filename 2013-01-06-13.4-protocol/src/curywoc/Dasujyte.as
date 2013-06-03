package curywoc
{
[CLASS129]   import wyjimigo.Tykum;
   import dylaqezo.Vusun;
   import __AS3__.vec.Vector;
   import wyjimigo.Server;
   import wyjimigo.Tabyr;
   import aaa.Parameters;


   public class Dasujyte extends Object implements Tykum
   {
      public function Dasujyte() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Vusun;

      private const servers:Vector.<Server> = new Vector.<Server>(0);

      public function laqiwyze(param1:Vector.<Server>) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Server = null;
         this.servers.length=0;
         for each (_loc2_ in param1)
         {
            this.servers.push(_loc2_);
         }
         return;
      }

      public function ris() : Vector.<Server> {
         return this.servers;
      }

      public function dizanicac() : Server {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc6_:Server = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc1_:Boolean = this.model.cevewaza();
         var _loc2_:Tabyr = this.model.hivukari();
         var _loc3_:Server = null;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:int = int.MAX_VALUE;
         for each (_loc6_ in this.servers)
         {
            if((_loc6_.vifam())&&!_loc1_)
            {
            }
            else
            {
               if(_loc6_.name==Parameters.data_.preferredServer)
               {
                  return _loc6_;
               }
               _loc7_=_loc6_.priority();
               _loc8_=Tabyr.distance(_loc2_,_loc6_.vuvyny);
               if(_loc7_<_loc5_||_loc7_==_loc5_&&_loc8_<_loc4_)
               {
                  _loc3_=_loc6_;
                  _loc4_=_loc8_;
                  _loc5_=_loc7_;
               }
            }
         }
         return _loc3_;
      }

      public function todih() : Boolean {
         return this.servers.length>0;
      }
   }
[/CLASS]
}