package sima
{
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import povopito.Fury;


   public class Redelewut extends Mubij
   {
      public function Redelewut() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private function kajipyqoj(param1:XML) : XML {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var matches:XMLList = null;
         var xml:XML = param1;
         for each (_loc7_ in xml.Activate)
         {
            with(_loc7_)
            {
               
               if(text()=="Trap")
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         matches=_loc3_;
         if(matches.length()>=1)
         {
            return matches[0];
         }
         return null;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var trap:XML = null;
         var otherTrap:XML = null;
         var tag:XML = null;
         var radius:Number = NaN;
         var otherRadius:Number = NaN;
         var damage:int = 0;
         var otherDamage:int = 0;
         var duration:int = 0;
         var otherDuration:int = 0;
         var avg:Number = NaN;
         var otherAvg:Number = NaN;
         var textColor:uint = 0;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         trap=this.kajipyqoj(itemXML);
         otherTrap=this.kajipyqoj(curItemXML);
         foqub=new AppendingLineBuilder();
         if(!(trap==null)&&!(otherTrap==null))
         {
            if(itemXML.@id=="Coral Venom Trap")
            {
               for each (_loc8_ in itemXML.Activate)
               {
                  with(_loc8_)
                  {
                     
                     if(text()=="Trap")
                     {
                        _loc4_[_loc5_]=_loc7_;
                     }
                  }
               }
               tag=_loc4_[0];
               foqub.pushParams(I18nKeys.zudine,{data:new Sire().setParams(I18nKeys.cibizam,
                  {
                     amount:tag.@totalDamage,
                     range:tag.@radius
                  }
               ).setPrefix(Fury.jocup(jaminiqop)).setPostfix(Fury.rig())});
               foqub.pushParams(I18nKeys.qok,
                  {
                     effect:new Sire().setParams(I18nKeys.qodiva),
                     duration:tag.@condDuration
                  }
               ,Fury.jocup(jaminiqop),Fury.rig());
               gawoc[tag.toXMLString()]=true;
            }
            else
            {
               radius=Number(trap.@radius);
               otherRadius=Number(otherTrap.@radius);
               damage=int(trap.@totalDamage);
               otherDamage=int(otherTrap.@totalDamage);
               duration=int(trap.@condDuration);
               otherDuration=int(otherTrap.@condDuration);
               avg=0.33*radius+0.33*damage+0.33*duration;
               otherAvg=0.33*otherRadius+0.33*otherDamage+0.33*otherDuration;
               textColor=gynuha(avg-otherAvg);
               foqub.pushParams(I18nKeys.zudine,{data:new Sire().setParams(I18nKeys.cibizam,
                  {
                     amount:trap.@totalDamage,
                     range:trap.@radius
                  }
               ).setPrefix(Fury.jocup(textColor)).setPostfix(Fury.rig())});
               foqub.pushParams(I18nKeys.qok,
                  {
                     effect:new Sire().setParams(I18nKeys.mesemywe),
                     duration:trap.@condDuration
                  }
               ,Fury.jocup(textColor),Fury.rig());
               gawoc[trap.toXMLString()]=true;
            }
         }
         return;
      }
   }

}