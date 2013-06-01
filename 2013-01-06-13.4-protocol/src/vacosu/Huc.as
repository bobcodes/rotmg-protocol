package vacosu
{
[CLASS1809]   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import pigeguwo.Hug;


   public class Huc extends Tohu
   {
      public function Huc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.juqez=new GeneralProjectileComparison();
         super();
         return;
      }

      private var juqez:GeneralProjectileComparison;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         this.juqez.zedonog(param1,param2);
         lupizavyc=this.juqez.lupizavyc;
         for (_loc3_ in this.juqez.vase)
         {
            vase[_loc3_]=this.juqez.vase[_loc3_];
         }
         this.zipumuzy(param1);
         return;
      }

      private function zipumuzy(param1:XML) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var tag:XML = null;
         var innerLineBuilder:Zufi = null;
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
            innerLineBuilder=new Zufi().setParams(Kefyfa.dyguzer,
               {
                  effect:Kefyfa.zori(Kefyfa.sepaduwo),
                  duration:tag.@duration
               }
            ).setPrefix(Hug.fyzep(bujypude)).setPostfix(Hug.pijef());
            lupizavyc.pushParams(Kefyfa.zod,{effect:innerLineBuilder});
            vase[tag.toXMLString()]=true;
         }
         return;
      }
   }
[/CLASS]
}