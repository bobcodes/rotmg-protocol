package noniq
{
   import mavew.Qyryl;
   import com.company.ui.Vovoj;
   import flash.filters.DropShadowFilter;


   public class Wici extends Qyryl
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wici(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(3552822,1,10197915,1,true);
         this.tob=new Vovoj(16,16777215,false,menuniwo-4,0);
         this.tob.setBold(true);
         this.tob.wordWrap=true;
         this.tob.text=String(param1.@id);
         this.tob.jacuf();
         this.tob.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.tob.x=0;
         this.tob.y=0;
         addChild(this.tob);
         return;
      }

      private static const menuniwo:int = 180;

      private var tob:Vovoj;
   }

}