package fihur
{
   import com.company.assembleegameclient.util.ConditionEffect;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import mavew.Taz;


   public class Ryfak extends Qudicy
   {
      public function Ryfak() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sariqezy=new GeneralProjectileComparison();
         super();
         return;
      }

      private var sariqezy:GeneralProjectileComparison;

      private var condition:XMLList;

      private var dih:XMLList;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var tagStr:String = null;
         var duration:Number = NaN;
         var conditionEffect:ConditionEffect = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         this.condition=itemXML.Projectile.ConditionEffect.(text()=="Slowed"||text()=="Paralyzed"||text()=="Dazed");
         for each (_loc7_ in curItemXML.Projectile.ConditionEffect)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(text()=="Slowed"||text()=="Paralyzed"||text()=="Dazed")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.dih=_loc4_;
         this.sariqezy.sokaqobod(itemXML,curItemXML);
         bycavima=this.sariqezy.bycavima;
         for (tagStr in this.sariqezy.lor)
         {
            lor[tagStr]=true;
         }
         if(this.condition.length()==1&&this.dih.length()==1)
         {
            duration=Number(this.condition[0].@duration);
            conditionEffect=ConditionEffect.buby(this.condition.text());
            bycavima.pushParams(Vibemod.cywop,{effect:""});
            bycavima.pushParams(Vibemod.dykejorug,
               {
                  effect:new Kybidu().setParams(conditionEffect.damalycyw),
                  duration:duration
               }
            ,Taz.humuhujig(tejy),Taz.vepiq());
            lor[this.condition[0].toXMLString()]=true;
         }
         return;
      }
   }

}