package mavew
{
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import lemugo.Wokycuku;
   import com.company.assembleegameclient.appengine.Jys;
   import com.company.assembleegameclient.appengine.Zef;
   import jediwip.AppendingLineBuilder;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.Hekisona;
   import com.company.assembleegameclient.util.Jiqefatok;
   import com.company.assembleegameclient.util.Kebinuhi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Zurawi;
   import flash.geom.ColorTransform;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;
   import komi.Vibemod;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import kabam.rotmg.assets.services.Zog;
   import com.company.assembleegameclient.util.Cinihel;


   public class Duqaqol extends Qyryl
   {
      public function Duqaqol(param1:XML, param2:Wokycuku, param3:Zef) {
         var _loc17_:* = false;
         var _loc18_:* = true;
         var _loc8_:AppendingLineBuilder = null;
         var _loc9_:XML = null;
         var _loc10_:BitmapData = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         super(3552822,1,16777215,1);
         var _loc4_:Jiqefatok = Hekisona.woseku(String(param1.AnimatedTexture.File),int(param1.AnimatedTexture.Index));
         var _loc5_:Kebinuhi = _loc4_.imageFromDir(Jiqefatok.RIGHT,Jiqefatok.radev,0);
         var _loc6_:int = 4/_loc5_.width()*100;
         var _loc7_:BitmapData = TextureRedrawer.redraw(_loc5_.image_,_loc6_,true,0,0);
         this.zojev=this.tarozocop(param2,param1);
         if(this.zojev)
         {
            _loc7_=Zurawi.kymyr(_loc7_,new ColorTransform(0,0,0,0.5,0,0,0,0));
         }
         this.kacezy=new Bitmap();
         this.kacezy.bitmapData=_loc7_;
         this.kacezy.x=-4;
         this.kacezy.y=-4;
         addChild(this.kacezy);
         this.nameText_=new Guzowoja().setSize(13).setColor(11776947);
         this.nameText_.setBold(true);
         this.nameText_.setStringBuilder(new Kybidu().setParams(param1.DisplayId));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         ryfoc.push(this.nameText_.textChanged);
         addChild(this.nameText_);
         this.cikulys=new Guzowoja().setSize(13).setColor(11776947).setWordWrap(true).setMultiLine(true).setTextWidth(174);
         this.cikulys.setStringBuilder(new Kybidu().setParams(param1.Description));
         this.cikulys.filters=[new DropShadowFilter(0,0,0)];
         ryfoc.push(this.cikulys.textChanged);
         addChild(this.cikulys);
         this.kojopy=new Gymajyzu(100,1842204);
         addChild(this.kojopy);
         if(this.zojev)
         {
            this.nezavyr=new Guzowoja().setSize(13).setColor(11776947).setTextWidth(174).setBold(true);
            this.nezavyr.setStringBuilder(new Kybidu().setParams(Vibemod.buryw));
            this.nezavyr.filters=[new DropShadowFilter(0,0,0)];
            ryfoc.push(this.nezavyr.textChanged);
            addChild(this.nezavyr);
            this.unlockText_=new Guzowoja().setSize(13).setColor(16549442).setTextWidth(174).setWordWrap(false).setMultiLine(true);
            _loc8_=new AppendingLineBuilder();
            for each (_loc9_ in param1.UnlockLevel)
            {
               _loc11_=ObjectLibrary.nezuwy[_loc9_.toString()];
               _loc12_=int(_loc9_.@level);
               if(param2.modom(_loc11_)<int(_loc9_.@level))
               {
                  _loc8_.pushParams(Vibemod.zikejito,
                     {
                        unlockLevel:_loc12_,
                        typeToDisplay:ObjectLibrary.kipanudad[_loc11_]
                     }
                  );
               }
            }
            this.unlockText_.setStringBuilder(_loc8_);
            this.unlockText_.filters=[new DropShadowFilter(0,0,0)];
            ryfoc.push(this.unlockText_.textChanged);
            addChild(this.unlockText_);
            this.costText_=new Guzowoja().setSize(13).setColor(65280);
            this.costText_.setStringBuilder(new Kybidu().setParams(Vibemod.serutij,{unlockCost:param1.UnlockCost}));
            this.costText_.filters=[new DropShadowFilter(0,0,0)];
            ryfoc.push(this.costText_.textChanged);
            addChild(this.costText_);
            _loc10_=Zog.makeCoin();
            this.tylitiko=new Bitmap(_loc10_);
            addChild(this.tylitiko);
         }
         else
         {
            _loc13_=param3==null?0:param3.numStars();
            this.bestLevel_=new Guzowoja().setSize(14).setColor(6206769).setMultiLine(true);
            this.bestLevel_.setStringBuilder(new Kybidu().setParams(Vibemod.vogoni,
               {
                  numStars:_loc13_,
                  bestLevel:param3!=null?param3.bestLevel():0,
                  fame:param3!=null?param3.lysatul():0
               }
            ));
            this.bestLevel_.filters=[new DropShadowFilter(0,0,0)];
            ryfoc.push(this.bestLevel_.textChanged);
            addChild(this.bestLevel_);
            _loc14_=Cinihel.nextStarFame(param3==null?0:param3.lysatul(),0);
            if(_loc14_>0)
            {
               this.nextClassQuest_=new Guzowoja().setSize(13).setColor(16549442).setTextWidth(160).setMultiLine(true).setWordWrap(true);
               this.nextClassQuest_.setStringBuilder(new Kybidu().setParams(Vibemod.rerynob,
                  {
                     nextStarFame:_loc14_,
                     typeToDisplay:param1.DisplayId
                  }
               ));
               this.nextClassQuest_.filters=[new DropShadowFilter(0,0,0)];
               ryfoc.push(this.nextClassQuest_.textChanged);
               addChild(this.nextClassQuest_);
            }
         }
         return;
      }

      private var kacezy:Bitmap;

      private var nameText_:Guzowoja;

      private var cikulys:Guzowoja;

      private var kojopy:Gymajyzu;

      private var bestLevel_:Guzowoja;

      private var nezavyr:Guzowoja;

      private var unlockText_:Guzowoja;

      private var nextClassQuest_:Guzowoja;

      private var costText_:Guzowoja;

      private var tylitiko:Bitmap;

      private var zojev:Boolean;

      override protected function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nameText_.x=32;
         this.nameText_.y=6;
         this.cikulys.x=8;
         this.cikulys.y=40;
         this.kojopy.x=6;
         this.kojopy.y=height;
         if(this.zojev)
         {
            this.nezavyr.x=8;
            this.nezavyr.y=height-2;
            this.unlockText_.x=12;
            this.unlockText_.y=height-4;
            this.costText_.x=12;
            this.costText_.y=height-4;
            this.tylitiko.y=this.costText_.y-2;
            this.tylitiko.x=this.costText_.x+this.costText_.getBounds(this.costText_).width+4;
         }
         else
         {
            this.bestLevel_.x=8;
            this.bestLevel_.y=height-2;
            if(this.nextClassQuest_)
            {
               this.nextClassQuest_.x=8;
               this.nextClassQuest_.y=height-2;
            }
         }
         this.draw();
         position();
         return;
      }

      private function tarozocop(param1:Wokycuku, param2:XML) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Boolean = param1.nibulo(String(param2.@id),Jys.hukato);
         var _loc4_:Boolean = param1.wewe(int(param2.@type));
         return !_loc3_&&!_loc4_;
      }

      override public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kojopy.hecymov(width-10,1842204);
         super.draw();
         return;
      }
   }

}