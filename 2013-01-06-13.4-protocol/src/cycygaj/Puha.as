package cycygaj
{
[CLASS1622]   import com.company.util.MoreColorUtil;
   import flash.geom.ColorTransform;
   import aaa.Parameters;
   import flash.events.Event;


   public class Puha extends Kujofy
   {
      public function Puha(param1:String, param2:String, param3:String, param4:Boolean=false) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super(param1,param2,param3);
         this.vabyp=new KeyCodeBox(Parameters.data_[zesiwutir]);
         this.vabyp.addEventListener(Event.CHANGE,this.sunanah);
         addChild(this.vabyp);
         this.pyjeluke(param4);
         return;
      }

      private var vabyp:KeyCodeBox;

      private var wegikyna:Boolean;

      public function pyjeluke(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wegikyna=param1;
         transform.colorTransform=this.wegikyna?MoreColorUtil.vakowin:MoreColorUtil.identity;
         mouseEnabled=!this.wegikyna;
         mouseChildren=!this.wegikyna;
         return;
      }

      override public function refresh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vabyp.hylohu(Parameters.data_[zesiwutir]);
         return;
      }

      private function sunanah(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Parameters.setKey(zesiwutir,this.vabyp.value());
         Parameters.save();
         return;
      }
   }
[/CLASS]
}