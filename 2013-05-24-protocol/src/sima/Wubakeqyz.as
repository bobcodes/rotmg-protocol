package sima
{
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import povopito.Fury;


   public class Wubakeqyz extends Mubij
   {
      public function Wubakeqyz() {
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
         _loc3_=this.fozelyp(param1);
         _loc4_=this.fozelyp(param2);
         foqub=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=int(_loc3_.@duration);
            _loc6_=int(_loc4_.@duration);
            _loc7_=gynuha(_loc5_-_loc6_);
            foqub.pushParams(I18nKeys.wegal,{stasis:new Sire().setParams(I18nKeys.hizeh,{duration:_loc5_}).setPrefix(Fury.jocup(_loc7_)).setPostfix(Fury.rig())});
            gawoc[_loc3_.toXMLString()]=true;
            this.joni(param1);
         }
         return;
      }

      private function fozelyp(param1:XML) : XML {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var matches:XMLList = null;
         var orbXML:XML = param1;
         for each (_loc7_ in orbXML.Activate)
         {
            with(_loc7_)
            {
               
               if(text()=="StasisBlast")
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         matches=_loc3_;
         return matches.length()==1?matches[0]:null;
      }

      private function joni(param1:XML) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var selfTags:XMLList = null;
         var speedy:XML = null;
         var damaging:XML = null;
         var itemXML:XML = param1;
         if(itemXML.@id=="Orb of Conflict")
         {
            for each (_loc7_ in itemXML.Activate)
            {
               with(_loc7_)
               {
                  
                  if(text()=="ConditionEffectSelf")
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            selfTags=_loc3_;
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
            foqub.pushParams(I18nKeys.sazekady,{effect:""});
            foqub.pushParams(I18nKeys.qok,
               {
                  effect:I18nKeys.rybet(I18nKeys.jacodi),
                  duration:speedy.@duration
               }
            ,Fury.jocup(jaminiqop),Fury.rig());
            foqub.pushParams(I18nKeys.sazekady,{effect:""});
            foqub.pushParams(I18nKeys.qok,
               {
                  effect:I18nKeys.rybet(I18nKeys.reca),
                  duration:damaging.@duration
               }
            ,Fury.jocup(jaminiqop),Fury.rig());
            gawoc[speedy.toXMLString()]=true;
            gawoc[damaging.toXMLString()]=true;
         }
         return;
      }
   }

}