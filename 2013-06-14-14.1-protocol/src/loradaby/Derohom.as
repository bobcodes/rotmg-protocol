package loradaby
{
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.events.Event;
   import __AS3__.vec.Vector;
   import jediwip.Tunyhazo;


   public class Derohom extends Duwyhumij
   {
      public function Derohom(param1:String, param2:Vector.<Tunyhazo>, param3:Array, param4:String, param5:String, param6:Function) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(param1,param4,param5);
         this.callback_=param6;
         this.gefowaco=new Vode(param2,param3,Parameters.data_[wavaqon]);
         this.gefowaco.addEventListener(Event.CHANGE,this.fuvare);
         addChild(this.gefowaco);
         return;
      }

      private var callback_:Function;

      private var gefowaco:Vode;

      override public function refresh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gefowaco.setValue(Parameters.data_[wavaqon]);
         return;
      }

      private function fuvare(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Parameters.data_[wavaqon]=this.gefowaco.value();
         Parameters.save();
         if(this.callback_!=null)
         {
            this.callback_();
         }
         return;
      }
   }

}