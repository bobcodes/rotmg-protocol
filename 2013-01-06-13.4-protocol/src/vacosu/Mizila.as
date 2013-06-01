package vacosu
{
[CLASS1807]   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import pigeguwo.Hug;


   public class Mizila extends Tohu
   {
      public function Mizila() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         _loc3_=this.wyq(param1);
         _loc4_=this.wyq(param2);
         lupizavyc=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=Number(_loc3_.@radius);
            _loc6_=Number(_loc4_.@radius);
            _loc7_=int(_loc3_.@totalDamage);
            _loc8_=int(_loc4_.@totalDamage);
            _loc9_=0.5*_loc5_+0.5*_loc7_;
            _loc10_=0.5*_loc6_+0.5*_loc8_;
            lupizavyc.pushParams(Kefyfa.gulugug,{effect:new Zufi().setParams(Kefyfa.dakuza,
               {
                  amount:_loc7_,
                  range:_loc5_
               }
            ).setPrefix(Hug.fyzep(conehody(_loc9_-_loc10_))).setPostfix(Hug.pijef())});
            vase[_loc3_.toXMLString()]=true;
         }
         return;
      }

      private function wyq(param1:XML) : XML {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var matches:XMLList = null;
         var xml:XML = param1;
         for each (_loc7_ in xml.Activate)
         {
            with(_loc7_)
            {
               
               if(text()==Gywow.dydyda)
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         matches=_loc3_;
         return matches.length()>=1?matches[0]:null;
      }
   }
[/CLASS]
}