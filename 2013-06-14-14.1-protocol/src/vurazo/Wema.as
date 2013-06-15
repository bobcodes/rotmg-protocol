package vurazo
{
   import jovurora.Divoceve;
   import lemugo.Wokycuku;
   import __AS3__.vec.Vector;
   import jovurora.Server;
   import jovurora.Cyp;
   import aaa.RotmgParameters.RotmgParameters;


   public class Wema extends Object implements Divoceve
   {
      public function Wema() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Wokycuku;

      private const servers:Vector.<Server> = new Vector.<Server>(0);

      public function diwa(param1:Vector.<Server>) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Server = null;
         this.servers.length=0;
         for each (_loc2_ in param1)
         {
            this.servers.push(_loc2_);
         }
         return;
      }

      public function cinudycu() : Vector.<Server> {
         return this.servers;
      }

      public function netil() : Server {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc6_:Server = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc1_:Boolean = this.model.mupububiq();
         var _loc2_:Cyp = this.model.caqih();
         var _loc3_:Server = null;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:int = int.MAX_VALUE;
         for each (_loc6_ in this.servers)
         {
            if((_loc6_.paqoty())&&!_loc1_)
            {
            }
            else
            {
               if(_loc6_.name==RotmgParameters.data_.preferredServer)
               {
                  return _loc6_;
               }
               _loc7_=_loc6_.priority();
               _loc8_=Cyp.distance(_loc2_,_loc6_.fitygoqy);
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

      public function bor() : Boolean {
         return this.servers.length>0;
      }
   }

}