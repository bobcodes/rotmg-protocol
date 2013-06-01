package sima
{
   import nec.Sire;
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import povopito.Fury;


   public class Syhiket extends Mubij
   {
      public function Syhiket() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var nova:XMLList = null;
         var otherNova:XMLList = null;
         var tag:XML = null;
         var range:int = 0;
         var otherRange:int = 0;
         var amount:int = 0;
         var otherAmount:int = 0;
         var wavg:Number = NaN;
         var otherWavg:Number = NaN;
         var innerStringBuilder:Sire = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         for each (_loc8_ in itemXML.Activate)
         {
            with(_loc8_)
            {
               
               if(text()=="HealNova")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         nova=_loc4_;
         for each (_loc7_ in curItemXML.Activate)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(text()=="HealNova")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         otherNova=_loc4_;
         foqub=new AppendingLineBuilder();
         if(nova.length()==1&&otherNova.length()==1)
         {
            range=int(itemXML.Activate.@range);
            otherRange=int(curItemXML.Activate.@range);
            amount=int(itemXML.Activate.@amount);
            otherAmount=int(curItemXML.Activate.@amount);
            wavg=0.5*range+0.5*amount;
            otherWavg=0.5*otherRange+0.5*otherAmount;
            if(itemXML.@id=="Tome of Purification")
            {
               range=6;
            }
            innerStringBuilder=new Sire().setParams(I18nKeys.cibizam,
               {
                  amount:amount.toString(),
                  range:range.toString()
               }
            ).setPrefix(Fury.jocup(gynuha(wavg-otherWavg))).setPostfix(Fury.rig());
            foqub.pushParams(I18nKeys.jahiqes,{effect:innerStringBuilder});
            gawoc[nova.toXMLString()]=true;
         }
         if(itemXML.@id=="Tome of Purification")
         {
            for each (_loc7_ in itemXML.Activate)
            {
               with(nextValue(_loc5_,_loc6_))
               {
                  
                  if(text()=="RemoveNegativeConditions")
                  {
                     _loc4_[_loc5_]=_loc7_;
                  }
               }
            }
            tag=_loc4_[0];
            foqub.pushParams(I18nKeys.busij,{},Fury.jocup(jaminiqop),Fury.rig());
            gawoc[tag.toXMLString()]=true;
         }
         else
         {
            if(itemXML.@id=="Tome of Holy Protection")
            {
               for each (_loc7_ in itemXML.Activate)
               {
                  with(nextValue(_loc5_,_loc6_))
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
                     effect:I18nKeys.rybet(I18nKeys.gomacywy),
                     duration:tag.@duration
                  }
               ,Fury.jocup(jaminiqop),Fury.rig());
               gawoc[tag.toXMLString()]=true;
            }
         }
         return;
      }
   }

}