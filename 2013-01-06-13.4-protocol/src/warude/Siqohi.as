package warude
{
[CLASS447]   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.Gofa;
   import flash.events.Event;
   import ferozosyf.Jogohyh;


   public class Siqohi extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Siqohi(param1:GameSprite, param2:Player, param3:int, param4:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.gs_=param1;
         this.player_=param2;
         this.w_=param3;
         this.h_=param4;
         this.wufi=new Gahipe(param1);
         return;
      }

      public static const mimy:Number = 1;

      public var gs_:GameSprite;

      public var player_:Player;

      public var w_:int;

      public var h_:int;

      public var tedyfyr:Panel = null;

      public var vonu:Gofa = null;

      public var wufi:Gahipe;

      private var kaniwym:Panel;

      public var zytiqyd:Function;

      public function setOverride(param1:Panel) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kaniwym!=null)
         {
            this.kaniwym.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         this.kaniwym=param1;
         this.kaniwym.addEventListener(Event.COMPLETE,this.onComplete);
         return;
      }

      public function redraw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tedyfyr.draw();
         return;
      }

      public function draw() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Gofa = null;
         var _loc2_:Panel = null;
         if(this.kaniwym!=null)
         {
            this.gypofohum(this.kaniwym);
            this.tedyfyr.draw();
            return;
         }
         _loc1_=this.zytiqyd();
         if(this.tedyfyr==null||!(_loc1_==this.vonu))
         {
            this.vonu=_loc1_;
            if(this.vonu!=null)
            {
               _loc2_=this.vonu.bukywijej(this.gs_);
               this.wufi=new Gahipe(this.gs_);
            }
            else
            {
               _loc2_=this.wufi;
            }
            this.gypofohum(_loc2_);
         }
         if(this.tedyfyr)
         {
            this.tedyfyr.draw();
         }
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.kaniwym!=null)
         {
            this.kaniwym.removeEventListener(Event.COMPLETE,this.onComplete);
            this.kaniwym=null;
         }
         this.gypofohum(null);
         this.draw();
         return;
      }

      public function gypofohum(param1:Panel) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!=this.tedyfyr)
         {
            this.tedyfyr=param1;
         }
         return;
      }

      private function vikizun() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.tedyfyr is Jogohyh)
         {
            this.tedyfyr.x=(this.w_-this.tedyfyr.width)*0.5;
            this.tedyfyr.y=8;
         }
         else
         {
            this.tedyfyr.x=6;
            this.tedyfyr.y=8;
         }
         addChild(this.tedyfyr);
         return;
      }
   }
[/CLASS]
}