package fihur
{
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import mavew.Taz;


   public class Dugygonek extends Qudicy
   {
      public function Dugygonek() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private function wifo(param1:XML) : XML {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var matches:XMLList = null;
         var xml:XML = param1;
         matches=xml.Activate.(text()=="Trap");
         if(matches.length()>=1)
         {
            return matches[0];
         }
         return null;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
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
         trap=this.wifo(itemXML);
         otherTrap=this.wifo(curItemXML);
         bycavima=new AppendingLineBuilder();
         if(!(trap==null)&&!(otherTrap==null))
         {
            if(itemXML.@id=="Coral Venom Trap")
            {
               tag=itemXML.Activate.(text()=="Trap")[0];
               bycavima.pushParams(Vibemod.mopotewun,{data:new Kybidu().setParams(Vibemod.ryjyfony,
                  {
                     amount:tag.@totalDamage,
                     range:tag.@radius
                  }
               ).setPrefix(Taz.humuhujig(pepovut)).setPostfix(Taz.vepiq())});
               bycavima.pushParams(Vibemod.dykejorug,
                  {
                     effect:new Kybidu().setParams(Vibemod.cyvusoko),
                     duration:tag.@condDuration
                  }
               ,Taz.humuhujig(pepovut),Taz.vepiq());
               lor[tag.toXMLString()]=true;
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
               textColor=musybiboj(avg-otherAvg);
               bycavima.pushParams(Vibemod.mopotewun,{data:new Kybidu().setParams(Vibemod.ryjyfony,
                  {
                     amount:trap.@totalDamage,
                     range:trap.@radius
                  }
               ).setPrefix(Taz.humuhujig(textColor)).setPostfix(Taz.vepiq())});
               bycavima.pushParams(Vibemod.dykejorug,
                  {
                     effect:new Kybidu().setParams(Vibemod.sopyz),
                     duration:trap.@condDuration
                  }
               ,Taz.humuhujig(textColor),Taz.vepiq());
               lor[trap.toXMLString()]=true;
            }
         }
         return;
      }
   }

}