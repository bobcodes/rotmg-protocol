package sima
{
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import povopito.Fury;


   public class Mef extends Mubij
   {
      public function Mef() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var sujezic:XML;

      private var qycuhofi:XML;

      private var ziwukycih:XML;

      private var gar:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var tag:XML = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         foqub=new AppendingLineBuilder();
         this.sujezic=this.syle(itemXML,"Healing");
         this.qycuhofi=this.syle(itemXML,"Damaging");
         this.ziwukycih=this.syle(curItemXML,"Healing");
         this.gar=this.syle(curItemXML,"Damaging");
         if(this.lihyhamuf())
         {
            this.sokecesa();
            this.zuh();
            if(itemXML.@id=="Seal of Blasphemous Prayer")
            {
               for each (_loc8_ in itemXML.Activate)
               {
                  with(_loc8_)
                  {
                     
                     if(text()=="ConditionEffectSelf")
                     {
                        _loc4_[_loc5_]=_loc7_;
                     }
                  }
               }
               tag=_loc4_[0];
               foqub.pushParams(I18nKeys.sazekady,{effect:""});
               foqub.pushParams(I18nKeys.qok,
                  {
                     effect:I18nKeys.rybet(I18nKeys.mojipynu),
                     duration:tag.@duration
                  }
               ,Fury.jocup(jaminiqop),Fury.rig());
               gawoc[tag.toXMLString()]=true;
            }
         }
         return;
      }

      private function lihyhamuf() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.sujezic==null)&&!(this.qycuhofi==null)&&!(this.ziwukycih==null)&&!(this.gar==null);
      }

      private function syle(param1:XML, param2:String) : XML {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var effectName:String = param2;
         for each (_loc8_ in xml.Activate)
         {
            with(_loc8_)
            {
               
               if(text()=="ConditionEffectAura")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         matches=_loc4_;
         for each (tag in matches)
         {
            if(tag.@effect==effectName)
            {
               return tag;
            }
         }
         return null;
      }

      private function sokecesa() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:int = int(this.sujezic.@duration);
         var _loc2_:int = int(this.ziwukycih.@duration);
         var _loc3_:Number = Number(this.sujezic.@range);
         var _loc4_:Number = Number(this.ziwukycih.@range);
         var _loc5_:Number = 0.5*_loc1_*0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_*0.5*_loc4_;
         var _loc7_:uint = gynuha(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(I18nKeys.bit,{range:this.sujezic.@range},Fury.jocup(_loc7_),Fury.rig());
         _loc8_.pushParams(I18nKeys.qok,
            {
               effect:I18nKeys.rybet(I18nKeys.qulyra),
               duration:_loc1_.toString()
            }
         ,Fury.jocup(_loc7_),Fury.rig());
         foqub.pushParams(I18nKeys.done,{effect:_loc8_});
         gawoc[this.sujezic.toXMLString()]=true;
         return;
      }

      private function zuh() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:int = int(this.qycuhofi.@duration);
         var _loc2_:int = int(this.gar.@duration);
         var _loc3_:Number = Number(this.qycuhofi.@range);
         var _loc4_:Number = Number(this.gar.@range);
         var _loc5_:Number = 0.5*_loc1_*0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_*0.5*_loc4_;
         var _loc7_:uint = gynuha(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(I18nKeys.bit,{range:this.qycuhofi.@range},Fury.jocup(_loc7_),Fury.rig());
         _loc8_.pushParams(I18nKeys.qok,
            {
               effect:I18nKeys.rybet(I18nKeys.reca),
               duration:_loc1_.toString()
            }
         ,Fury.jocup(_loc7_),Fury.rig());
         foqub.pushParams(I18nKeys.done,{effect:_loc8_});
         gawoc[this.qycuhofi.toXMLString()]=true;
         return;
      }
   }

}