package sima
{
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import povopito.Fury;


   public class Jilipo extends Mubij
   {
      public function Jilipo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var decoy:XMLList;

      private var fyqyzi:XMLList;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var duration:Number = NaN;
         var otherDuration:Number = NaN;
         var textColor:uint = 0;
         var test:String = null;
         var itemXML:XML = param1;
         var curItemXML:XML = param2;
         for each (_loc8_ in itemXML.Activate)
         {
            with(_loc8_)
            {
               
               if(text()=="Decoy")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.decoy=_loc4_;
         for each (_loc7_ in curItemXML.Activate)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(text()=="Decoy")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         this.fyqyzi=_loc4_;
         foqub=new AppendingLineBuilder();
         if(this.decoy.length()==1&&this.fyqyzi.length()==1)
         {
            duration=Number(this.decoy[0].@duration);
            otherDuration=Number(this.fyqyzi[0].@duration);
            textColor=gynuha(duration-otherDuration);
            foqub.pushParams(I18nKeys.puhumyjo,{data:new Sire().setParams(I18nKeys.hizeh,{duration:duration.toString()}).setPrefix(Fury.jocup(textColor)).setPostfix(Fury.rig())});
            test=this.decoy[0].toXMLString();
            gawoc[this.decoy[0].toXMLString()]=true;
         }
         return;
      }
   }

}