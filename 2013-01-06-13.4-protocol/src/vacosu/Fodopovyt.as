package vacosu
{
[CLASS1811]   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import pigeguwo.Hug;


   public class Fodopovyt extends Tohu
   {
      public function Fodopovyt() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private function bysapaf(param1:XML) : XML {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var matches:XMLList = null;
         var xml:XML = param1;
         for each (_loc7_ in xml.Activate)
         {
            with(_loc7_)
            {
               
               if(text()=="Trap")
               {
                  _loc3_[_loc4_]=_loc6_;
               }
            }
         }
         matches=_loc3_;
         if(matches.length()>=1)
         {
            return matches[0];
         }
         return null;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
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
         trap=this.bysapaf(itemXML);
         otherTrap=this.bysapaf(curItemXML);
         lupizavyc=new AppendingLineBuilder();
         if(!(trap==null)&&!(otherTrap==null))
         {
            if(itemXML.@id=="Coral Venom Trap")
            {
               for each (_loc8_ in itemXML.Activate)
               {
                  with(_loc8_)
                  {
                     
                     if(text()=="Trap")
                     {
                        _loc4_[_loc5_]=_loc7_;
                     }
                  }
               }
               tag=_loc4_[0];
               lupizavyc.pushParams(Kefyfa.jymowag,{data:new Zufi().setParams(Kefyfa.dakuza,
                  {
                     amount:tag.@totalDamage,
                     range:tag.@radius
                  }
               ).setPrefix(Hug.fyzep(bujypude)).setPostfix(Hug.pijef())});
               lupizavyc.pushParams(Kefyfa.dyguzer,
                  {
                     effect:new Zufi().setParams(Kefyfa.wifarozos),
                     duration:tag.@condDuration
                  }
               ,Hug.fyzep(bujypude),Hug.pijef());
               vase[tag.toXMLString()]=true;
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
               textColor=conehody(avg-otherAvg);
               lupizavyc.pushParams(Kefyfa.jymowag,{data:new Zufi().setParams(Kefyfa.dakuza,
                  {
                     amount:trap.@totalDamage,
                     range:trap.@radius
                  }
               ).setPrefix(Hug.fyzep(textColor)).setPostfix(Hug.pijef())});
               lupizavyc.pushParams(Kefyfa.dyguzer,
                  {
                     effect:new Zufi().setParams(Kefyfa.lugoj),
                     duration:trap.@condDuration
                  }
               ,Hug.fyzep(textColor),Hug.pijef());
               vase[trap.toXMLString()]=true;
            }
         }
         return;
      }
   }
[/CLASS]
}