package vacosu
{
[CLASS1813]   import totuhare.Zufi;
   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import pigeguwo.Hug;


   public class Vifiv extends Tohu
   {
      public function Vifiv() {
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
         var innerStringBuilder:Zufi = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         for each (_loc8_ in itemXML.Activate)
         {
            with(_loc8_)
            {
               
               if(text()=="HealNova")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         nova=_loc4_;
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
         lupizavyc=new AppendingLineBuilder();
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
            innerStringBuilder=new Zufi().setParams(Kefyfa.dakuza,
               {
                  amount:amount.toString(),
                  range:range.toString()
               }
            ).setPrefix(Hug.fyzep(conehody(wavg-otherWavg))).setPostfix(Hug.pijef());
            lupizavyc.pushParams(Kefyfa.kasator,{effect:innerStringBuilder});
            vase[nova.toXMLString()]=true;
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
            lupizavyc.pushParams(Kefyfa.cij,{},Hug.fyzep(bujypude),Hug.pijef());
            vase[tag.toXMLString()]=true;
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
               lupizavyc.pushParams(Kefyfa.jocywob,{effect:""});
               lupizavyc.pushParams(Kefyfa.dyguzer,
                  {
                     effect:Kefyfa.zori(Kefyfa.dat),
                     duration:tag.@duration
                  }
               ,Hug.fyzep(bujypude),Hug.pijef());
               vase[tag.toXMLString()]=true;
            }
         }
         return;
      }
   }
[/CLASS]
}