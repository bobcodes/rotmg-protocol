package qilarag
{
[CLASS420]   import flash.display.Sprite;
   import tinava.Dab;
   import flash.display.Bitmap;
   import com.company.ui.Remyl;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.display.BitmapData;
   import flash.filters.DropShadowFilter;


   public class Nica extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Nica(param1:BitmapData, param2:String, param3:String, param4:String, param5:int, param6:int) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.sewepija=new Dab(int);
         super();
         this.link=param4;
         this.accountId=param6;
         buttonMode=true;
         useHandCursor=true;
         tabEnabled=false;
         this.mad=new Bitmap();
         this.mad.bitmapData=param1;
         this.mad.x=12;
         this.mad.y=HEIGHT/2-param1.height/2-3;
         addChild(this.mad);
         this.danypifev=new Remyl(18,socug,false,0,0);
         this.danypifev.text=param2;
         this.danypifev.mojymak();
         this.danypifev.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.danypifev.x=73;
         addChild(this.danypifev);
         this.taglineText_=new Remyl(14,socug,false,0,0);
         this.taglineText_.text=param3;
         this.taglineText_.mojymak();
         this.taglineText_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.taglineText_.x=73;
         this.taglineText_.y=24;
         addChild(this.taglineText_);
         this.nur=new Remyl(16,socug,false,0,0);
         this.nur.text=this.nibenumem(param5);
         this.nur.mojymak();
         this.nur.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.nur.x=WIDTH-this.nur.width;
         addChild(this.nur);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         return;
      }

      public static const WIDTH:int = 430;

      public static const HEIGHT:int = 52;

      public static const socug:uint = 11776947;

      public static const wukec:uint = 16762880;

      public var sewepija:Dab;

      public var mad:Bitmap;

      public var danypifev:Remyl;

      public var taglineText_:Remyl;

      public var nur:Remyl;

      public var link:String;

      public var accountId:int;

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.danypifev.setColor(wukec);
         this.taglineText_.setColor(wukec);
         this.nur.setColor(wukec);
         return;
      }

      protected function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.danypifev.setColor(socug);
         this.taglineText_.setColor(socug);
         this.nur.setColor(socug);
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = this.link.split(":",2);
         switch(null)
         {
            case "fame":
               this.sewepija.dispatch(int(_loc2_[1]));
               break;
            case "http":
            case "https":
         }
         navigateToURL(new URLRequest(this.link),"_blank");
         return;
      }

      private function nibenumem(param1:int) : String {
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
[/CLASS]
}