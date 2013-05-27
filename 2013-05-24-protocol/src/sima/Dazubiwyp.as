package sima
{
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import povopito.Fury;


   public class Dazubiwyp extends Mubij
   {
      public function Dazubiwyp() {
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
         _loc3_=this.hejudyd(param1);
         _loc4_=this.hejudyd(param2);
         foqub=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=Number(_loc3_.@radius);
            _loc6_=Number(_loc4_.@radius);
            _loc7_=int(_loc3_.@totalDamage);
            _loc8_=int(_loc4_.@totalDamage);
            _loc9_=0.5*_loc5_+0.5*_loc7_;
            _loc10_=0.5*_loc6_+0.5*_loc8_;
            foqub.pushParams(I18nKeys.nemyqel,{effect:new Sire().setParams(I18nKeys.cibizam,
               {
                  amount:_loc7_,
                  range:_loc5_
               }
            ).setPrefix(Fury.jocup(gynuha(_loc9_-_loc10_))).setPostfix(Fury.rig())});
            gawoc[_loc3_.toXMLString()]=true;
         }
         return;
      }

      private function hejudyd(param1:XML) : XML {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var matches:XMLList = null;
         var xml:XML = param1;
         for each (_loc7_ in xml.Activate)
         {
            with(_loc7_)
            {
               
               if(text()==Tibapyqy.vagajic)
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         matches=_loc3_;
         return matches.length()>=1?matches[0]:null;
      }
   }

}