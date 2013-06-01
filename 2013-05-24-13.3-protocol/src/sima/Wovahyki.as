package sima
{
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import povopito.Fury;


   public class Wovahyki extends Mubij
   {
      public function Wovahyki() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.suwagogid=new GeneralProjectileComparison();
         super();
         return;
      }

      private var suwagogid:GeneralProjectileComparison;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         this.suwagogid.bynuqome(param1,param2);
         foqub=this.suwagogid.foqub;
         for (_loc3_ in this.suwagogid.gawoc)
         {
            gawoc[_loc3_]=this.suwagogid.gawoc[_loc3_];
         }
         this.lic(param1);
         return;
      }

      private function lic(param1:XML) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var tag:XML = null;
         var innerLineBuilder:Sire = null;
         var itemXML:XML = param1;
         if(itemXML.@id=="Shield of Ogmur")
         {
            for each (_loc7_ in itemXML.ConditionEffect)
            {
               with(_loc7_)
               {
                  
                  if(text()=="Armor Broken")
                  {
                     _loc3_[_loc4_]=_loc6_;
                  }
               }
            }
            tag=_loc3_[0];
            innerLineBuilder=new Sire().setParams(I18nKeys.qok,
               {
                  effect:I18nKeys.rybet(I18nKeys.bimyc),
                  duration:tag.@duration
               }
            ).setPrefix(Fury.jocup(jaminiqop)).setPostfix(Fury.rig());
            foqub.pushParams(I18nKeys.done,{effect:innerLineBuilder});
            gawoc[tag.toXMLString()]=true;
         }
         return;
      }
   }

}