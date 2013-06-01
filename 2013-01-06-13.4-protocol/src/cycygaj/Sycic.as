package cycygaj
{
[CLASS1623]   import com.company.assembleegameclient.parameters.Parameters;
   import flash.events.Event;
   import __AS3__.vec.Vector;
   import totuhare.Qebar;


   public class Sycic extends Kujofy
   {
      public function Sycic(param1:String, param2:Vector.<Qebar>, param3:Array, param4:String, param5:String, param6:Function) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(param1,param4,param5);
         this.callback_=param6;
         this.tysijipy=new Degyko(param2,param3,Parameters.data_[zesiwutir]);
         this.tysijipy.addEventListener(Event.CHANGE,this.sunanah);
         addChild(this.tysijipy);
         return;
      }

      private var callback_:Function;

      private var tysijipy:Degyko;

      override public function refresh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tysijipy.setValue(Parameters.data_[zesiwutir]);
         return;
      }

      private function sunanah(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Parameters.data_[zesiwutir]=this.tysijipy.value();
         Parameters.save();
         if(this.callback_!=null)
         {
            this.callback_();
         }
         return;
      }
   }
[/CLASS]
}