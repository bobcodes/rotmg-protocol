package fidymu
{
   import flash.display.Sprite;
   import ruwysepyd.Junefolef;
   import flash.display.DisplayObjectContainer;
   import coh.Biba;
   import coh.Civ;
   import movimet.Lufub;
   import coh.Zepiter;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import tulunyno.Hugyqufyq;
   import jezasowib.Tiqufu;
   import qucuqesif.Rasoqymi;
   import nec.Sire;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import flash.display.BitmapData;
   import gyzesuqu.Zojygese;


   public class CaretakerQueryDialog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function CaretakerQueryDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const WIDTH:int = 274;

      public static const HEIGHT:int = 428;

      public static const TITLE:String = "CaretakerQueryDialog.title";

      public static const vola:String = "CaretakerQueryDialog.query";

      public static const CLOSE:String = "Close.text";

      public static const luc:String = "Screens.back";

      public static const cug:Array = [
                                            {
                                            category:"CaretakerQueryDialog.category_petYard",
                                            info:"CaretakerQueryDialog.info_petYard"
                                            }
                                            ,
                                            {
                                            category:"CaretakerQueryDialog.category_pets",
                                            info:"CaretakerQueryDialog.info_pets"
                                            }
                                            ,
                                            {
                                            category:"CaretakerQueryDialog.category_abilities",
                                            info:"CaretakerQueryDialog.info_abilities"
                                            }
                                            ,
                                            {
                                            category:"CaretakerQueryDialog.category_feedingPets",
                                            info:"CaretakerQueryDialog.info_feedingPets"
                                            }
                                            ,
                                            {
                                            category:"CaretakerQueryDialog.category_fusingPets",
                                            info:"CaretakerQueryDialog.info_fusingPets"
                                            }
                                            ,
                                            {
                                            category:"CaretakerQueryDialog.category_evolution",
                                            info:"CaretakerQueryDialog.info_evolution"
                                            }
                                            ];

      private const fodew:Junefolef = this.vulido();

      private const container:DisplayObjectContainer = this.makeContainer();

      private const background:Biba = this.gehepu();

      private const caretaker:Civ = this.niberajug();

      private const title:Lufub = this.ladifol();

      private const hufowafyg:Zepiter = this.legakapy();

      private const vype:Dogyqijec = this.sesu();

      private const pisykyr:Dogyqijec = this.nagelywig();

      public const closed:Hugyqufyq = new Zojygese(this.pisykyr,MouseEvent.CLICK);

      private function vulido() : Junefolef {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.complete.addOnce(this.gigupyhy);
         return _loc1_;
      }

      private function gigupyhy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tiqufu = new Tiqufu();
         _loc1_.layout(WIDTH,this.pisykyr);
         _loc1_.layout(WIDTH,this.vype);
         return;
      }

      private function makeContainer() : DisplayObjectContainer {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sprite = null;
         _loc1_=new Sprite();
         _loc1_.x=(800-WIDTH)/2;
         _loc1_.y=(600-HEIGHT)/2;
         addChild(_loc1_);
         return _loc1_;
      }

      private function gehepu() : Biba {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Biba = new Biba();
         _loc1_.draw(WIDTH,HEIGHT);
         _loc1_.kapyly(Biba.HORIZONTAL_DIVISION,34);
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function niberajug() : Civ {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Civ = new Civ();
         _loc1_.x=20;
         _loc1_.y=50;
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function ladifol() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = Rasoqymi.tefyko(16777215,18,true);
         _loc1_.setStringBuilder(new Sire().setParams(TITLE));
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.x=WIDTH/2;
         _loc1_.y=24;
         this.container.addChild(_loc1_);
         return _loc1_;
      }

      private function sesu() : Dogyqijec {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dogyqijec = new Dogyqijec(16,luc,80);
         _loc1_.y=382;
         _loc1_.visible=false;
         _loc1_.addEventListener(MouseEvent.CLICK,this.cysaq);
         this.container.addChild(_loc1_);
         this.fodew.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function cysaq(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.caretaker.syjydyz();
         this.hufowafyg.visible=true;
         this.pisykyr.visible=true;
         this.vype.visible=false;
         return;
      }

      private function nagelywig() : Dogyqijec {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dogyqijec = new Dogyqijec(16,CLOSE,110);
         _loc1_.y=382;
         this.container.addChild(_loc1_);
         this.fodew.push(_loc1_.textChanged);
         return _loc1_;
      }

      private function legakapy() : Zepiter {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zepiter = new Zepiter(cug);
         _loc1_.x=20;
         _loc1_.y=110;
         _loc1_.selected.add(this.sag);
         this.container.addChild(_loc1_);
         this.fodew.push(_loc1_.ready);
         return _loc1_;
      }

      private function sag(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hufowafyg.visible=false;
         this.pisykyr.visible=false;
         this.vype.visible=true;
         this.caretaker.kybol(param1);
         return;
      }

      public function cemis(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.caretaker.cemis(param1);
         return;
      }
   }

}