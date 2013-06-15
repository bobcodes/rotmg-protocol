package fihur
{
   import jediwip.Kybidu;
   import komi.Vibemod;
   import mavew.Taz;


   public class Wufu extends Qudicy
   {
      public function Wufu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sariqezy=new GeneralProjectileComparison();
         super();
         return;
      }

      private var sariqezy:GeneralProjectileComparison;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         this.sariqezy.sokaqobod(param1,param2);
         bycavima=this.sariqezy.bycavima;
         for (_loc3_ in this.sariqezy.lor)
         {
            lor[_loc3_]=this.sariqezy.lor[_loc3_];
         }
         this.mupub(param1);
         return;
      }

      private function mupub(param1:XML) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var tag:XML = null;
         var innerLineBuilder:Kybidu = null;
         var itemXML:XML = param1;
         if(itemXML.@id=="Shield of Ogmur")
         {
            tag=itemXML.ConditionEffect.(text()=="Armor Broken")[0];
            innerLineBuilder=new Kybidu().setParams(Vibemod.dykejorug,
               {
                  effect:Vibemod.girafapu(Vibemod.kohi),
                  duration:tag.@duration
               }
            ).setPrefix(Taz.humuhujig(pepovut)).setPostfix(Taz.vepiq());
            bycavima.pushParams(Vibemod.zekora,{effect:innerLineBuilder});
            lor[tag.toXMLString()]=true;
         }
         return;
      }
   }

}