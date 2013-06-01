package vacosu
{
[CLASS1817]   import totuhare.Zufi;
   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import pigeguwo.Hug;


   public class Rec extends Tohu
   {
      public function Rec() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var result:XMLList = null;
         var otherResult:XMLList = null;
         var damage:int = 0;
         var otherDamage:int = 0;
         var textColor:uint = 0;
         var targets:int = 0;
         var otherTargets:int = 0;
         var innerLineBuilder:Zufi = null;
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
               
               if(text()==Gywow.givesuci)
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
               
               if(text()==Gywow.givesuci)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         otherResult=_loc4_;
         lupizavyc=new AppendingLineBuilder();
         if(result.length()==1&&otherResult.length()==1)
         {
            damage=int(result[0].@totalDamage);
            otherDamage=int(otherResult[0].@totalDamage);
            textColor=conehody(damage-otherDamage);
            targets=int(result[0].@maxTargets);
            otherTargets=int(otherResult[0].@maxTargets);
            innerLineBuilder=new Zufi().setParams(Kefyfa.dolyzocy,
               {
                  damage:damage.toString(),
                  targets:targets.toString()
               }
            ).setPrefix(Hug.fyzep(conehody(damage-otherDamage))).setPostfix(Hug.pijef());
            lupizavyc.pushParams(Kefyfa.givesuci,{data:innerLineBuilder});
            vase[result[0].toXMLString()]=true;
         }
         if(String(itemXML.Activate.@condEffect))
         {
            condition=itemXML.Activate.@condEffect;
            duration=itemXML.Activate.@condDuration;
            compositeStr=" "+condition+" for "+duration+" secs\n";
            htmlStr="Shot Effect:\n"+vajaco(compositeStr,fyje);
            lupizavyc.pushParams(Kefyfa.binakodo,{effect:""});
            lupizavyc.pushParams(Kefyfa.dyguzer,
               {
                  effect:condition,
                  duration:duration.toString()
               }
            ,Hug.fyzep(fyje),Hug.pijef());
         }
         return;
      }
   }
[/CLASS]
}