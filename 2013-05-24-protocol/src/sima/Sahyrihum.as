package sima
{
   import com.company.assembleegameclient.util.ConditionEffect;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import povopito.Fury;


   public class Sahyrihum extends Mubij
   {
      public function Sahyrihum() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.suwagogid=new GeneralProjectileComparison();
         super();
         return;
      }

      private var suwagogid:GeneralProjectileComparison;

      private var condition:XMLList;

      private var bucywyge:XMLList;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
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
         this.bucywyge=_loc4_;
         this.suwagogid.bynuqome(itemXML,curItemXML);
         foqub=this.suwagogid.foqub;
         for (tagStr in this.suwagogid.gawoc)
         {
            gawoc[tagStr]=true;
         }
         if(this.condition.length()==1&&this.bucywyge.length()==1)
         {
            duration=Number(this.condition[0].@duration);
            conditionEffect=ConditionEffect.gyqaluqih(this.condition.text());
            foqub.pushParams(I18nKeys.cipym,{effect:""});
            foqub.pushParams(I18nKeys.qok,
               {
                  effect:new Sire().setParams(conditionEffect.hopogy),
                  duration:duration
               }
            ,Fury.jocup(tiheb),Fury.rig());
            gawoc[this.condition[0].toXMLString()]=true;
         }
         return;
      }
   }

}