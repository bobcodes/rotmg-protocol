package sakugyt
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import flash.display.Bitmap;
   import com.company.ui.Sytubyvyg;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.display.BitmapData;
   import flash.filters.DropShadowFilter;


   public class Zel extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zel(param1:BitmapData, param2:String, param3:String, param4:String, param5:int, param6:int) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.bokemipur=new Hugyqufyq(int);
         super();
         this.link=param4;
         this.accountId=param6;
         buttonMode=true;
         useHandCursor=true;
         tabEnabled=false;
         this.buwigyh=new Bitmap();
         this.buwigyh.bitmapData=param1;
         this.buwigyh.x=12;
         this.buwigyh.y=HEIGHT/2-param1.height/2-3;
         addChild(this.buwigyh);
         this.pevyh=new Sytubyvyg(18,dyrem,false,0,0);
         this.pevyh.text=param2;
         this.pevyh.nuji();
         this.pevyh.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.pevyh.x=73;
         addChild(this.pevyh);
         this.taglineText_=new Sytubyvyg(14,dyrem,false,0,0);
         this.taglineText_.text=param3;
         this.taglineText_.nuji();
         this.taglineText_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.taglineText_.x=73;
         this.taglineText_.y=24;
         addChild(this.taglineText_);
         this.liwuruf=new Sytubyvyg(16,dyrem,false,0,0);
         this.liwuruf.text=this.felatepo(param5);
         this.liwuruf.nuji();
         this.liwuruf.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.liwuruf.x=WIDTH-this.liwuruf.width;
         addChild(this.liwuruf);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         return;
      }

      public static const WIDTH:int = 430;

      public static const HEIGHT:int = 52;

      public static const dyrem:uint = 11776947;

      public static const wogo:uint = 16762880;

      public var bokemipur:Hugyqufyq;

      public var buwigyh:Bitmap;

      public var pevyh:Sytubyvyg;

      public var taglineText_:Sytubyvyg;

      public var liwuruf:Sytubyvyg;

      public var link:String;

      public var accountId:int;

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pevyh.setColor(wogo);
         this.taglineText_.setColor(wogo);
         this.liwuruf.setColor(wogo);
         return;
      }

      protected function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pevyh.setColor(dyrem);
         this.taglineText_.setColor(dyrem);
         this.liwuruf.setColor(dyrem);
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = this.link.split(":",2);
         switch(_loc2_[0])
         {
            case "fame":
               this.bokemipur.dispatch(int(_loc2_[1]));
               break;
            case "http":
            case "https":
         }
         navigateToURL(new URLRequest(this.link),"_blank");
         return;
      }

      private function felatepo(param1:int) : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = new Date().getTime()/1000;
         var _loc3_:int = _loc2_-param1;
         if(_loc3_<=0)
         {
            return "now";
         }
         if(_loc3_<60)
         {
            return _loc3_+" secs";
         }
         if(_loc3_<60*60)
         {
            return int(_loc3_/60)+" mins";
         }
         if(_loc3_<60*60*24)
         {
            return int(_loc3_/60*60)+" hours";
         }
         return int(_loc3_/60*60*24)+" days";
      }
   }

}