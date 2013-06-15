package fihur
{
   import jediwip.Kybidu;
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import mavew.Taz;


   public class PoisonComparison extends Qudicy
   {
      public function PoisonComparison() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var activate:XMLList = null;
         var otherActivate:XMLList = null;
         var damage:int = 0;
         var otherDamage:int = 0;
         var radius:Number = NaN;
         var otherRadius:Number = NaN;
         var duration:Number = NaN;
         var otherDuration:Number = NaN;
         var avg:Number = NaN;
         var otherAvg:Number = NaN;
         var dataLineBuilder:Kybidu = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         activate=itemXML.Activate.(text()=="PoisonGrenade");
         for each (_loc7_ in curItemXML.Activate)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(text()=="PoisonGrenade")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         otherActivate=_loc4_;
         bycavima=new AppendingLineBuilder();
         if(activate.length()==1&&otherActivate.length()==1)
         {
            damage=int(activate[0].@totalDamage);
            otherDamage=int(otherActivate[0].@totalDamage);
            radius=Number(activate[0].@radius);
            otherRadius=Number(otherActivate[0].@radius);
            duration=Number(activate[0].@duration);
            otherDuration=Number(otherActivate[0].@duration);
            avg=0.33*damage+0.33*radius+0.33*duration;
            otherAvg=0.33*otherDamage+0.33*otherRadius+0.33*otherDuration;
            dataLineBuilder=new Kybidu().setParams(Vibemod.monodaso,
               {
                  damage:damage.toString(),
                  duration:duration.toString(),
                  radius:radius.toString()
               }
            ).setPrefix(Taz.humuhujig(musybiboj(avg-otherAvg))).setPostfix(Taz.vepiq());
            bycavima.pushParams(Vibemod.lyjorere,{data:dataLineBuilder});
            lor[activate[0].toXMLString()]=true;
         }
         return;
      }
   }

}