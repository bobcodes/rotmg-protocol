package waryp
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import flash.display.Bitmap;
   import com.company.ui.Vovoj;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.display.BitmapData;
   import flash.filters.DropShadowFilter;


   public class Belokonij extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Belokonij(param1:BitmapData, param2:String, param3:String, param4:String, param5:int, param6:int) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.vodor=new Qanyduk(int);
         super();
         this.link=param4;
         this.accountId=param6;
         buttonMode=true;
         useHandCursor=true;
         tabEnabled=false;
         this.tyj=new Bitmap();
         this.tyj.bitmapData=param1;
         this.tyj.x=12;
         this.tyj.y=HEIGHT/2-param1.height/2-3;
         addChild(this.tyj);
         this.tob=new Vovoj(18,vylafipa,false,0,0);
         this.tob.text=param2;
         this.tob.dog();
         this.tob.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.tob.x=73;
         addChild(this.tob);
         this.taglineText_=new Vovoj(14,vylafipa,false,0,0);
         this.taglineText_.text=param3;
         this.taglineText_.dog();
         this.taglineText_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.taglineText_.x=73;
         this.taglineText_.y=24;
         addChild(this.taglineText_);
         this.suhyja=new Vovoj(16,vylafipa,false,0,0);
         this.suhyja.text=this.lutatyk(param5);
         this.suhyja.dog();
         this.suhyja.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         this.suhyja.x=WIDTH-this.suhyja.width;
         addChild(this.suhyja);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         return;
      }

      public static const WIDTH:int = 430;

      public static const HEIGHT:int = 52;

      public static const vylafipa:uint = 11776947;

      public static const koty:uint = 16762880;

      public var vodor:Qanyduk;

      public var tyj:Bitmap;

      public var tob:Vovoj;

      public var taglineText_:Vovoj;

      public var suhyja:Vovoj;

      public var link:String;

      public var accountId:int;

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tob.setColor(koty);
         this.taglineText_.setColor(koty);
         this.suhyja.setColor(koty);
         return;
      }

      protected function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tob.setColor(vylafipa);
         this.taglineText_.setColor(vylafipa);
         this.suhyja.setColor(vylafipa);
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = this.link.split(":",2);
         switch(null)
         {
            case "fame":
               this.vodor.dispatch(int(_loc2_[1]));
               return;
            case "http":
            case "https":
               break;
         }
         navigateToURL(new URLRequest(this.link),"_blank");
         return;
      }

      private function lutatyk(param1:int) : String {
         var [OFS2]_loc4_:* = [/OFS]true;
         var [OFS4]_loc5_:* = [/OFS]false;
         var [OFS24]_loc2_:Number = [/OFS][OFS11]new [/OFS][OFS11]Date[/OFS][OFS11]([/OFS][OFS11])[/OFS].[OFS15]getTime[/OFS][OFS15]([/OFS][OFS15])[/OFS][OFS22]/[/OFS][OFS19]1000[/OFS];
         var [OFS29]_loc3_:int = [/OFS][OFS25]_loc2_[/OFS][OFS27]-[/OFS][OFS26]param1[/OFS];
         if([OFS30]_loc3_[/OFS][OFS33]<=[/OFS][OFS31]0[/OFS])
         {
            [OFS41]return [/OFS][OFS37]"now"[/OFS];
         }
         if([OFS42]_loc3_[/OFS][OFS45]<[/OFS][OFS43]60[/OFS])
         {
            [OFS54]return [/OFS][OFS49]_loc3_[/OFS][OFS53]+[/OFS][OFS50]" secs"[/OFS];
         }
         if([OFS55]_loc3_[/OFS][OFS60]<[/OFS][OFS56]60[/OFS][OFS59]*[/OFS][OFS56]60[/OFS])
         {
            [OFS78]return [/OFS][OFS70]int[/OFS][OFS70]([/OFS][OFS66]_loc3_[/OFS][OFS69]/[/OFS][OFS67]60[/OFS][OFS70])[/OFS][OFS77]+[/OFS][OFS73]" mins"[/OFS];
         }
         if([OFS79]_loc3_[/OFS][OFS87]<[/OFS][OFS80]60[/OFS][OFS83]*[/OFS][OFS80]60[/OFS][OFS86]*[/OFS][OFS84]24[/OFS])
         {
            [OFS106]return [/OFS][OFS99]int[/OFS][OFS99]([/OFS][OFS93]_loc3_[/OFS][OFS98]/[/OFS][OFS94]60[/OFS][OFS97]*[/OFS][OFS94]60[/OFS][OFS99])[/OFS][OFS105]+[/OFS][OFS102]" hours"[/OFS];
         }
         [OFS125]return [/OFS][OFS118]int[/OFS][OFS118]([/OFS][OFS109]_loc3_[/OFS][OFS117]/[/OFS][OFS110]60[/OFS][OFS113]*[/OFS][OFS110]60[/OFS][OFS116]*[/OFS][OFS114]24[/OFS][OFS118])[/OFS][OFS124]+[/OFS][OFS121]" days"[/OFS];
      }
   }

}