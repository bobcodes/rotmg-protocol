package sima
{
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import povopito.Fury;


   public class Mojyv extends Mubij
   {
      public function Mojyv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc3_=this.gaf(param1);
         _loc4_=this.gaf(param2);
         foqub=new AppendingLineBuilder();
         if(!(_loc3_==null)&&!(_loc4_==null))
         {
            _loc5_=Number(_loc3_.@duration);
            _loc6_=Number(_loc4_.@duration);
            this.ryh(_loc5_,_loc6_);
            gawoc[_loc3_.toXMLString()]=true;
         }
         this.joni(param1);
         return;
      }

      private function joni(param1:XML) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var teleportTag:XML = null;
         var itemXML:XML = param1;
         if(itemXML.@id=="Cloak of the Planewalker")
         {
            foqub.pushParams(I18nKeys.cykabuv,{},Fury.jocup(jaminiqop),Fury.rig());
            for each (_loc7_ in itemXML.Activate)
            {
               with(_loc7_)
               {
                  
                  if(text()==Tibapyqy.TELEPORT)
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            teleportTag=XML(_loc3_)[0];
            gawoc[teleportTag.toXMLString()]=true;
         }
         return;
      }

      private function gaf(param1:XML) : XML {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var matches:XMLList = null;
         var conditionTag:XML = null;
         var xml:XML = param1;
         for each (_loc7_ in xml.Activate)
         {
            with(_loc7_)
            {
               
               if(text()==Tibapyqy.pec)
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         matches=_loc3_;
         for each (conditionTag in matches)
         {
            for each (_loc9_ in conditionTag)
            {
               with(_loc9_)
               {
                  
                  if(@effect=="Invisible")
                  {
                     _loc5_[_loc6_]=_loc8_;
                  }
               }
            }
            if(_loc5_)
            {
               return conditionTag;
            }
         }
         return null;
      }

      private function ryh(param1:Number, param2:Number) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:uint = gynuha(param1-param2);
         foqub.pushParams(I18nKeys.sazekady,{effect:""});
         foqub.pushParams(I18nKeys.qok,
            {
               effect:I18nKeys.rybet(I18nKeys.cysutes),
               duration:param1.toString()
            }
         ,Fury.jocup(_loc3_),Fury.rig());
         return;
      }
   }

}