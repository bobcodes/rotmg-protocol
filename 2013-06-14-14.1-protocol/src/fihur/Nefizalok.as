package fihur
{
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import mavew.Taz;


   public class Nefizalok extends Qudicy
   {
      public function Nefizalok() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         _loc3_=this.kodicotol(param1);
         _loc4_=this.kodicotol(param2);
         bycavima=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=Number(_loc3_.@radius);
            _loc6_=Number(_loc4_.@radius);
            _loc7_=int(_loc3_.@totalDamage);
            _loc8_=int(_loc4_.@totalDamage);
            _loc9_=0.5*_loc5_+0.5*_loc7_;
            _loc10_=0.5*_loc6_+0.5*_loc8_;
            bycavima.pushParams(Vibemod.jijutus,{effect:new Kybidu().setParams(Vibemod.ryjyfony,
               {
                  amount:_loc7_,
                  range:_loc5_
               }
            ).setPrefix(Taz.humuhujig(musybiboj(_loc9_-_loc10_))).setPostfix(Taz.vepiq())});
            lor[_loc3_.toXMLString()]=true;
         }
         return;
      }

      private function kodicotol(param1:XML) : XML {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var matches:XMLList = null;
         var xml:XML = param1;
         matches=xml.Activate.(text()==Warel.govuce);
         return matches.length()>=1?matches[0]:null;
      }
   }

}