package vacosu
{
[CLASS1816]   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import pigeguwo.Hug;


   public class Tacidyq extends Tohu
   {
      public function Tacidyq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var decoy:XMLList;

      private var bufohy:XMLList;

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
         this.bufohy=_loc4_;
         lupizavyc=new AppendingLineBuilder();
         if(this.decoy.length()==1&&this.bufohy.length()==1)
         {
            duration=Number(this.decoy[0].@duration);
            otherDuration=Number(this.bufohy[0].@duration);
            textColor=conehody(duration-otherDuration);
            lupizavyc.pushParams(Kefyfa.til,{data:new Zufi().setParams(Kefyfa.jygalyji,{duration:duration.toString()}).setPrefix(Hug.fyzep(textColor)).setPostfix(Hug.pijef())});
            test=this.decoy[0].toXMLString();
            vase[this.decoy[0].toXMLString()]=true;
         }
         return;
      }
   }
[/CLASS]
}