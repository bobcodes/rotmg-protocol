package vacosu
{
[CLASS1806]   import com.company.assembleegameclient.util.ConditionEffect;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import pigeguwo.Hug;


   public class Gecewu extends Tohu
   {
      public function Gecewu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.juqez=new GeneralProjectileComparison();
         super();
         return;
      }

      private var juqez:GeneralProjectileComparison;

      private var condition:XMLList;

      private var zipy:XMLList;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var tagStr:String = null;
         var duration:Number = NaN;
         var conditionEffect:ConditionEffect = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         for each (_loc8_ in itemXML.Projectile.ConditionEffect)
         {
            with(_loc8_)
            {
               
               if(text()=="Slowed"||text()=="Paralyzed"||text()=="Dazed")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.condition=_loc4_;
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
         this.zipy=_loc4_;
         this.juqez.zedonog(itemXML,curItemXML);
         lupizavyc=this.juqez.lupizavyc;
         for (tagStr in this.juqez.vase)
         {
            vase[tagStr]=true;
         }
         if(this.condition.length()==1&&this.zipy.length()==1)
         {
            duration=Number(this.condition[0].@duration);
            conditionEffect=ConditionEffect.koguti(this.condition.text());
            lupizavyc.pushParams(Kefyfa.binakodo,{effect:""});
            lupizavyc.pushParams(Kefyfa.dyguzer,
               {
                  effect:new Zufi().setParams(conditionEffect.hobosep),
                  duration:duration
               }
            ,Hug.fyzep(fyje),Hug.pijef());
            vase[this.condition[0].toXMLString()]=true;
         }
         return;
      }
   }
[/CLASS]
}