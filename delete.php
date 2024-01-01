<?php
require_once 'dbconfig/config.php';

try {
    $id = $_GET['rn'];

    $sql = "DELETE FROM CHATBOT_HINTS WHERE ID = :id";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);

    if ($stmt->execute()) {
        echo "<script>alert('Record Deleted from database')</script>";
    } else {
        echo "<font color='red'>Failed to delete from db!!</font>";
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

header("Refresh:0; url=/qna.php");
exit();
?>
