package tasig
{
   import kogyc.Lifew;
   import hotewa.Baqifa;
   import __AS3__.vec.Vector;
   import kogyc.Server;
   import kogyc.Mile;
   import aaa.rotmg.config.UserConfig;


   public class Miwe extends Object implements Lifew
   {
      public function Miwe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Baqifa;

      private const servers:Vector.<Server> = new Vector.<Server>(0);

      public function rytory(param1:Vector.<Server>) : void {
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

      public function konozylo() : Vector.<Server> {
         return this.servers;
      }

      public function zypyfyjo() : Server {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc6_:Server = null;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc1_:Boolean = this.model.kuzuqi();
         var _loc2_:Mile = this.model.huqub();
         var _loc3_:Server = null;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:int = int.MAX_VALUE;
         for each (_loc6_ in this.servers)
         {
            if((_loc6_.jami())&&!_loc1_)
            {
            }
            else
            {
               if(_loc6_.name==UserConfig.data_.preferredServer)
               {
                  return _loc6_;
               }
               _loc7_=_loc6_.priority();
               _loc8_=Mile.distance(_loc2_,_loc6_.kik);
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

      public function pevanuga() : Boolean {
         return this.servers.length>0;
      }
   }

}