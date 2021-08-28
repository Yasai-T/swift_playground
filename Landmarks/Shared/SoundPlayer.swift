//
//  SoundPlayer.swift
//  SoundPlayer
//
//  Created by 緑川知輝 on 2021/08/28.
//

import AVFoundation
import UIKit

class SoundPlayer: NSObject {
  let kickData = NSDataAsset(name: "kick")!.data
  let snareData = NSDataAsset(name: "snare")!.data
  let tamData = NSDataAsset(name: "tam")!.data

  var kickPlayer: AVAudioPlayer!
  var snarePlayer: AVAudioPlayer!
  var tamPlayer: AVAudioPlayer!

  func kickPlay() {
    do {
      kickPlayer = try AVAudioPlayer(data: kickData)
      kickPlayer.play()
    } catch {
      print("kick error")
    }
  }

  func snarePlay() {
    do {
      snarePlayer = try AVAudioPlayer(data: snareData)
      snarePlayer.play()
    } catch {
      print("snare error")
    }
  }

  func tamPlay() {
    do {
      tamPlayer = try AVAudioPlayer(data: tamData)
      tamPlayer.play()
    } catch {
      print("tam error")
    }
  }
}
