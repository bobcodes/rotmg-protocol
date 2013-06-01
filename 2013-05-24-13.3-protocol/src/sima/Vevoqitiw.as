package sima
{
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import povopito.Fury;


   public class Vevoqitiw extends Mubij
   {
      public function Vevoqitiw() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var paw:XML;

      private var speedy:XML;

      private var rafyco:XML;

      private var sudovequ:XML;

      private var wysomyse:XML;

      private var gipyhez:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kowusi(param1,param2);
         foqub=new AppendingLineBuilder();
         this.belowaw();
         this.cereh();
         this.doluz();
         return;
      }

      private function kowusi(param1:XML, param2:XML) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.paw=this.sibojad(param1,"Berserk");
         this.speedy=this.kodedolyk(param1,"Speedy");
         this.wysomyse=this.kodedolyk(param1,"Armored");
         this.rafyco=this.sibojad(param2,"Berserk");
         this.sudovequ=this.kodedolyk(param2,"Speedy");
         this.gipyhez=this.kodedolyk(param2,"Armored");
         return;
      }

      private function sibojad(param1:XML, param2:String) : XML {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var typeName:String = param2;
         for each (_loc8_ in xml.Activate)
         {
            with(_loc8_)
            {
               
               if(text()==Tibapyqy.suvacawew)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         matches=_loc4_;
         for each (tag in matches)
         {
            if(tag.@effect==typeName)
            {
               return tag;
            }
         }
         return null;
      }

      private function kodedolyk(param1:XML, param2:String) : XML {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var matches:XMLList = null;
         var tag:XML = null;
         var xml:XML = param1;
         var typeName:String = param2;
         for each (_loc8_ in xml.Activate)
         {
            with(_loc8_)
            {
               
               if(text()==Tibapyqy.pec)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         matches=_loc4_;
         for each (tag in matches)
         {
            if(tag.@effect==typeName)
            {
               return tag;
            }
         }
         return null;
      }

      private function belowaw() : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         if(this.paw==null||this.rafyco==null)
         {
            return;
         }
         var _loc1_:Number = Number(this.paw.@range);
         var _loc2_:Number = Number(this.rafyco.@range);
         var _loc3_:Number = Number(this.paw.@duration);
         var _loc4_:Number = Number(this.rafyco.@duration);
         var _loc5_:Number = 0.5*_loc1_+0.5*_loc3_;
         var _loc6_:Number = 0.5*_loc2_+0.5*_loc4_;
         var _loc7_:uint = gynuha(_loc5_-_loc6_);
         var _loc8_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc8_.pushParams(I18nKeys.bit,{range:_loc1_.toString()},Fury.jocup(_loc7_),Fury.rig());
         _loc8_.pushParams(I18nKeys.qok,
            {
               effect:I18nKeys.rybet(I18nKeys.wigyh),
               duration:_loc3_.toString()
            }
         ,Fury.jocup(_loc7_),Fury.rig());
         foqub.pushParams(I18nKeys.done,{effect:_loc8_});
         gawoc[this.paw.toXMLString()]=true;
         return;
      }

      private function cereh() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(!(this.speedy==null)&&!(this.sudovequ==null))
         {
            _loc1_=Number(this.speedy.@duration);
            _loc2_=Number(this.sudovequ.@duration);
            foqub.pushParams(I18nKeys.sazekady,{effect:""});
            foqub.pushParams(I18nKeys.qok,
               {
                  effect:I18nKeys.rybet(I18nKeys.jacodi),
                  duration:_loc1_.toString()
               }
            ,Fury.jocup(gynuha(_loc1_-_loc2_)),Fury.rig());
            gawoc[this.speedy.toXMLString()]=true;
         }
         else
         {
            if(!(this.speedy==null)&&this.sudovequ==null)
            {
               foqub.pushParams(I18nKeys.sazekady,{effect:""});
               foqub.pushParams(I18nKeys.qok,
                  {
                     effect:I18nKeys.rybet(I18nKeys.jacodi),
                     duration:this.speedy.@duration
                  }
               ,Fury.jocup(quky),Fury.rig());
               gawoc[this.speedy.toXMLString()]=true;
            }
         }
         return;
      }

      private function doluz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.wysomyse!=null)
         {
            foqub.pushParams(I18nKeys.sazekady,{effect:""});
            foqub.pushParams(I18nKeys.qok,
               {
                  effect:I18nKeys.rybet(I18nKeys.gomacywy),
                  duration:this.wysomyse.@duration
               }
            ,Fury.jocup(jaminiqop),Fury.rig());
            gawoc[this.wysomyse.toXMLString()]=true;
         }
         return;
      }
   }

}