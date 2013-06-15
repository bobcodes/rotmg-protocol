package fihur
{
   import jediwip.Kybidu;
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import mavew.Taz;


   public class Kumo extends Qudicy
   {
      public function Kumo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var nova:XMLList = null;
         var otherNova:XMLList = null;
         var tag:XML = null;
         var range:int = 0;
         var otherRange:int = 0;
         var amount:int = 0;
         var otherAmount:int = 0;
         var wavg:Number = NaN;
         var otherWavg:Number = NaN;
         var innerStringBuilder:Kybidu = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         nova=itemXML.Activate.(text()=="HealNova");
         for each (_loc7_ in curItemXML.Activate)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(text()=="HealNova")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         otherNova=_loc4_;
         bycavima=new AppendingLineBuilder();
         if(nova.length()==1&&otherNova.length()==1)
         {
            range=int(itemXML.Activate.@range);
            otherRange=int(curItemXML.Activate.@range);
            amount=int(itemXML.Activate.@amount);
            otherAmount=int(curItemXML.Activate.@amount);
            wavg=0.5*range+0.5*amount;
            otherWavg=0.5*otherRange+0.5*otherAmount;
            if(itemXML.@id=="Tome of Purification")
            {
               range=6;
            }
            innerStringBuilder=new Kybidu().setParams(Vibemod.ryjyfony,
               {
                  amount:amount.toString(),
                  range:range.toString()
               }
            ).setPrefix(Taz.humuhujig(musybiboj(wavg-otherWavg))).setPostfix(Taz.vepiq());
            bycavima.pushParams(Vibemod.hehy,{effect:innerStringBuilder});
            lor[nova.toXMLString()]=true;
         }
         if(itemXML.@id=="Tome of Purification")
         {
            for each (_loc7_ in itemXML.Activate)
            {
               with(nextValue(_loc5_,_loc6_))
               {
                  
                  if(text()=="RemoveNegativeConditions")
                  {
                     _loc4_[_loc5_]=_loc7_;
                  }
               }
            }
            tag=_loc4_[0];
            bycavima.pushParams(Vibemod.kukamij,{},Taz.humuhujig(pepovut),Taz.vepiq());
            lor[tag.toXMLString()]=true;
         }
         else
         {
            if(itemXML.@id=="Tome of Holy Protection")
            {
               for each (_loc7_ in itemXML.Activate)
               {
                  with(nextValue(_loc5_,_loc6_))
                  {
                     
                     if(text()=="ConditionEffectSelf")
                     {
                        _loc4_[_loc5_]=_loc7_;
                     }
                  }
               }
               tag=_loc4_[0];
               bycavima.pushParams(Vibemod.nenigiw,{effect:""});
               bycavima.pushParams(Vibemod.dykejorug,
                  {
                     effect:Vibemod.girafapu(Vibemod.late),
                     duration:tag.@duration
                  }
               ,Taz.humuhujig(pepovut),Taz.vepiq());
               lor[tag.toXMLString()]=true;
            }
         }
         return;
      }
   }

}