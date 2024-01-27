<?php
require_once 'dbconfig/config.php';

try {
    $id = $_GET['rn'];

    $sql = "DELETE FROM chatbot_hints WHERE ID = :id";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);

    if ($stmt->execute()) {
        echo "<script>alert('Record Deleted from database'); window.location.href = 'qna.php';</script>";
    } else {
        echo "<script>alert('Failed to delete from db!!'); window.location.href = 'qna.php';</script>";
    }
} catch (PDOException $e) {
    $errMsg = $e->getMessage();
    echo "<script>alert('Failed to delete from db! SQL ERROR'); window.location.href = 'qna.php';</script>";
}

exit();
?>
