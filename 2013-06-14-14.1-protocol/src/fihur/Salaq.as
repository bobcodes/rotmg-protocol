package fihur
{
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import mavew.Taz;


   public class Salaq extends Qudicy
   {
      public function Salaq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:uint = 0;
         _loc3_=this.furafy(param1);
         _loc4_=this.furafy(param2);
         bycavima=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=int(_loc3_.@duration);
            _loc6_=int(_loc4_.@duration);
            _loc7_=musybiboj(_loc5_-_loc6_);
            bycavima.pushParams(Vibemod.joneqoq,{stasis:new Kybidu().setParams(Vibemod.mewafaw,{duration:_loc5_}).setPrefix(Taz.humuhujig(_loc7_)).setPostfix(Taz.vepiq())});
            lor[_loc3_.toXMLString()]=true;
            this.vaqyjuby(param1);
         }
         return;
      }

      private function furafy(param1:XML) : XML {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var matches:XMLList = null;
         var orbXML:XML = param1;
         matches=orbXML.Activate.(text()=="StasisBlast");
         return matches.length()==1?matches[0]:null;
      }

      private function vaqyjuby(param1:XML) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var selfTags:XMLList = null;
         var speedy:XML = null;
         var damaging:XML = null;
         var itemXML:XML = param1;
         if(itemXML.@id=="Orb of Conflict")
         {
            selfTags=itemXML.Activate.(text()=="ConditionEffectSelf");
            for each (_loc6_ in selfTags)
            {
               with(nextValue(_loc4_,_loc5_))
               {
                  
                  if(@effect=="Speedy")
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            speedy=_loc3_[0];
            for each (_loc6_ in selfTags)
            {
               with(nextValue(_loc4_,_loc5_))
               {
                  
                  if(@effect=="Damaging")
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            damaging=_loc3_[0];
            bycavima.pushParams(Vibemod.nenigiw,{effect:""});
            bycavima.pushParams(Vibemod.dykejorug,
               {
                  effect:Vibemod.girafapu(Vibemod.qymadyzag),
                  duration:speedy.@duration
               }
            ,Taz.humuhujig(pepovut),Taz.vepiq());
            bycavima.pushParams(Vibemod.nenigiw,{effect:""});
            bycavima.pushParams(Vibemod.dykejorug,
               {
                  effect:Vibemod.girafapu(Vibemod.seqehyg),
                  duration:damaging.@duration
               }
            ,Taz.humuhujig(pepovut),Taz.vepiq());
            lor[speedy.toXMLString()]=true;
            lor[damaging.toXMLString()]=true;
         }
         return;
      }
   }

}