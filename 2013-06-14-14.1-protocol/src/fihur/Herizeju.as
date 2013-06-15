package fihur
{
   import jediwip.Kybidu;
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import mavew.Taz;


   public class Herizeju extends Qudicy
   {
      public function Herizeju() {
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
         var innerLineBuilder:Kybidu = null;
         var condition:String = null;
         var duration:Number = NaN;
         var compositeStr:String = null;
         var htmlStr:String = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         result=itemXML.Activate.(text()==Warel.dikubi);
         for each (_loc7_ in curItemXML.Activate)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(text()==Warel.dikubi)
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         otherResult=_loc4_;
         bycavima=new AppendingLineBuilder();
         if(result.length()==1&&otherResult.length()==1)
         {
            damage=int(result[0].@totalDamage);
            otherDamage=int(otherResult[0].@totalDamage);
            textColor=musybiboj(damage-otherDamage);
            targets=int(result[0].@maxTargets);
            otherTargets=int(otherResult[0].@maxTargets);
            innerLineBuilder=new Kybidu().setParams(Vibemod.woqutyva,
               {
                  damage:damage.toString(),
                  targets:targets.toString()
               }
            ).setPrefix(Taz.humuhujig(musybiboj(damage-otherDamage))).setPostfix(Taz.vepiq());
            bycavima.pushParams(Vibemod.dikubi,{data:innerLineBuilder});
            lor[result[0].toXMLString()]=true;
         }
         if(String(itemXML.Activate.@condEffect))
         {
            condition=itemXML.Activate.@condEffect;
            duration=itemXML.Activate.@condDuration;
            compositeStr=" "+condition+" for "+duration+" secs\n";
            htmlStr="Shot Effect:\n"+wafifib(compositeStr,tejy);
            bycavima.pushParams(Vibemod.cywop,{effect:""});
            bycavima.pushParams(Vibemod.dykejorug,
               {
                  effect:condition,
                  duration:duration.toString()
               }
            ,Taz.humuhujig(tejy),Taz.vepiq());
         }
         return;
      }
   }

}