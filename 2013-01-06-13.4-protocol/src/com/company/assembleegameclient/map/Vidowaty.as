package com.company.assembleegameclient.map
{
[CLASS551]   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.game.Tosahafu;
   import com.company.assembleegameclient.objects.Player;
   import nytizak.Background;
   import wiwojaz.Fato;
   import copeno.Lydyl;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.Vevobeb;
   import com.company.assembleegameclient.objects.BasicObject;
   import flash.geom.Point;


   public class Vidowaty extends Sprite
   {
      public function Vidowaty() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.goDict_=new Dictionary();
         this.map_=new Sprite();
         this.rasy=new Vector.<Square>();
         this.squares_=new Vector.<Square>();
         this.rynequlyb=new Dictionary();
         this.merchLookup_=new Object();
         super();
         return;
      }

      public var goDict_:Dictionary;

      public var gs_:Tosahafu;

      public var name_:String;

      public var player_:Player = null;

      public var showDisplays_:Boolean;

      public var width_:int;

      public var height_:int;

      public var heluca:int;

      public var allowPlayerTeleport_:Boolean;

      public var background_:Background = null;

      public var map_:Sprite;

      public var bow:Sepyv = null;

      public var pikocyv:Hyvab = null;

      public var mapOverlay_:Fato = null;

      public var partyOverlay_:Lydyl = null;

      public var rasy:Vector.<Square>;

      public var squares_:Vector.<Square>;

      public var rynequlyb:Dictionary;

      public var merchLookup_:Object;

      public var party_:Vevobeb = null;

      public var quest_:Quest = null;

      public function setProps(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:Boolean) : void {
         return;
      }

      public function addObj(param1:BasicObject, param2:Number, param3:Number) : void {
         return;
      }

      public function setGroundTile(param1:int, param2:int, param3:uint) : void {
         return;
      }

      public function initialize() : void {
         return;
      }

      public function dispose() : void {
         return;
      }

      public function update(param1:int, param2:int) : void {
         return;
      }

      public function pSTopW(param1:Number, param2:Number) : Point {
         return null;
      }

      public function removeObj(param1:int) : void {
         return;
      }

      public function draw(param1:Fot, param2:int) : void {
         return;
      }
   }
[/CLASS]
}