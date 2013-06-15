package noniq
{
   import mavew.Qyryl;
   import com.company.ui.Vovoj;
   import flash.filters.DropShadowFilter;


   public class Matujemim extends Qyryl
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Matujemim(param1:XML) {
         var _loc3_:* = false;
         var _loc4_:* = true;
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
         var _loc2_:* = "";
         if(param1.hasOwnProperty("Speed"))
         {
            _loc2_=_loc2_+("Speed: "+Number(param1.Speed).toFixed(2)+"\n");
         }
         else
         {
            _loc2_=_loc2_+"Speed: 1.00\n";
         }
         if(param1.hasOwnProperty("NoWalk"))
         {
            _loc2_=_loc2_+"Unwalkable\n";
         }
         if(param1.hasOwnProperty("Push"))
         {
            _loc2_=_loc2_+"Push\n";
         }
         if(param1.hasOwnProperty("Sink"))
         {
            _loc2_=_loc2_+"Sink\n";
         }
         if(param1.hasOwnProperty("Sinking"))
         {
            _loc2_=_loc2_+"Sinking\n";
         }
         if(param1.hasOwnProperty("Animate"))
         {
            _loc2_=_loc2_+"Animated\n";
         }
         if(param1.hasOwnProperty("RandomOffset"))
         {
            _loc2_=_loc2_+"Randomized\n";
         }
         this.ziw=new Vovoj(14,11776947,false,menuniwo,0);
         this.ziw.wordWrap=true;
         this.ziw.text=String(_loc2_);
         this.ziw.jacuf();
         this.ziw.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.ziw.x=0;
         this.ziw.y=this.tob.height+2;
         addChild(this.ziw);
         return;
      }

      private static const menuniwo:int = 180;

      private var tob:Vovoj;

      private var ziw:Vovoj;
   }

}