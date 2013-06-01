package sima
{
   import nec.Sire;
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import povopito.Fury;


   public class Petugaqat extends Mubij
   {
      public function Petugaqat() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var result:XMLList = null;
         var otherResult:XMLList = null;
         var damage:int = 0;
         var otherDamage:int = 0;
         var textColor:uint = 0;
         var targets:int = 0;
         var otherTargets:int = 0;
         var innerLineBuilder:Sire = null;
         var condition:String = null;
         var duration:Number = NaN;
         var compositeStr:String = null;
         var htmlStr:String = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         for each (_loc8_ in itemXML.Activate)
         {
            with(_loc8_)
            {
               
               if(text()==Tibapyqy.gubegupa)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         result=_loc4_;
         for each (_loc7_ in curItemXML.Activate)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(text()==Tibapyqy.gubegupa)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         otherResult=_loc4_;
         foqub=new AppendingLineBuilder();
         if(result.length()==1&&otherResult.length()==1)
         {
            damage=int(result[0].@totalDamage);
            otherDamage=int(otherResult[0].@totalDamage);
            textColor=gynuha(damage-otherDamage);
            targets=int(result[0].@maxTargets);
            otherTargets=int(otherResult[0].@maxTargets);
            innerLineBuilder=new Sire().setParams(I18nKeys.vowamof,
               {
                  damage:damage.toString(),
                  targets:targets.toString()
               }
            ).setPrefix(Fury.jocup(gynuha(damage-otherDamage))).setPostfix(Fury.rig());
            foqub.pushParams(I18nKeys.gubegupa,{data:innerLineBuilder});
            gawoc[result[0].toXMLString()]=true;
         }
         if(String(itemXML.Activate.@condEffect))
         {
            condition=itemXML.Activate.@condEffect;
            duration=itemXML.Activate.@condDuration;
            compositeStr=" "+condition+" for "+duration+" secs\n";
            htmlStr="Shot Effect:\n"+zerefuhen(compositeStr,tiheb);
            foqub.pushParams(I18nKeys.cipym,{effect:""});
            foqub.pushParams(I18nKeys.qok,
               {
                  effect:condition,
                  duration:duration.toString()
               }
            ,Fury.jocup(tiheb),Fury.rig());
         }
         return;
      }
   }

}