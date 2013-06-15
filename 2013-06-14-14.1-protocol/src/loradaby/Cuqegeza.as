package loradaby
{
   import com.company.util.MoreColorUtil;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.events.Event;


   public class Cuqegeza extends Duwyhumij
   {
      public function Cuqegeza(param1:String, param2:String, param3:String, param4:Boolean=false) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(param1,param2,param3);
         this.feq=new KeyCodeBox(Parameters.data_[wavaqon]);
         this.feq.addEventListener(Event.CHANGE,this.fuvare);
         addChild(this.feq);
         this.sotymojor(param4);
         return;
      }

      private var feq:KeyCodeBox;

      private var wukev:Boolean;

      public function sotymojor(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wukev=param1;
         transform.colorTransform=this.wukev?MoreColorUtil.golanehud:MoreColorUtil.identity;
         mouseEnabled=!this.wukev;
         mouseChildren=!this.wukev;
         return;
      }

      override public function refresh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.feq.mafevopari(Parameters.data_[wavaqon]);
         return;
      }

      private function fuvare(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Parameters.setKey(wavaqon,this.feq.value());
         Parameters.save();
         return;
      }
   }

}