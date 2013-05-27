package nafa
{
   import povopito.Ryduwi;
   import com.company.ui.Sytubyvyg;
   import flash.filters.DropShadowFilter;


   public class Wacizohy extends Ryduwi
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wacizohy(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(3552822,1,10197915,1,true);
         this.pevyh=new Sytubyvyg(16,16777215,false,cupuzini-4,0);
         this.pevyh.setBold(true);
         this.pevyh.wordWrap=true;
         this.pevyh.text=String(param1.@id);
         this.pevyh.cijoka();
         this.pevyh.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.pevyh.x=0;
         this.pevyh.y=0;
         addChild(this.pevyh);
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
         this.heluhipe=new Sytubyvyg(14,11776947,false,cupuzini,0);
         this.heluhipe.wordWrap=true;
         this.heluhipe.text=String(_loc2_);
         this.heluhipe.cijoka();
         this.heluhipe.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.heluhipe.x=0;
         this.heluhipe.y=this.pevyh.height+2;
         addChild(this.heluhipe);
         return;
      }

      private static const cupuzini:int = 180;

      private var pevyh:Sytubyvyg;

      private var heluhipe:Sytubyvyg;
   }

}